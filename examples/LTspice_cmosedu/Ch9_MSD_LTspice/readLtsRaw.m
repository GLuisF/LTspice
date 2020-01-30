function [signame vRaw tRaw] = readLtsRaw(filename)
%This version takes the absolute value of the time
fid = fopen(filename, 'rb');
[filename, mode, machineformat] = fopen(fid);

charnum=0;
eolchar = hex2dec('0a');
eol = 0;
eoh = 0;
linenum = 0;
while(~eoh)%Read the header
    linenum = linenum + 1;
    while(~eol)
        charnum=charnum+1;
        header(linenum,charnum)= fread(fid, 1, '*uint8');
        eol = (header(linenum,charnum) == eolchar);
    end
    charnum=0;
    eol=0;
    eoh = length(findstr(char(header(linenum,:)), 'Binary:'));
end
% disp(char(header));%Display the header info
line5 = char(header(5,:));
numvars = str2num(line5(findstr(line5, ': ')+2:end));
line6 = char(header(6,:));
numpoints = str2num(line6(findstr(line6, ': ')+2:end));
signame = char(header(linenum-numvars-1:linenum -1, :));

startpos = ftell(fid);  %Save for getting back to the beginning of the binary data
skipbytes = 4*(numvars-1);
tRaw(1,:) = abs(fread(fid, numpoints, 'double', skipbytes, machineformat));  %Read the times
vRaw = zeros(numvars-1,length(tRaw));
for signum = 1:numvars-1
    fseek(fid, startpos + 8 + 4*(signum-1), 'bof');    %Back to the beginning, add offset to get to signum voltage
    vRaw(signum, :) = fread(fid, numpoints, 'float32', 8 + 4*(numvars-2), machineformat); %Read the voltages
end
fclose(fid);
% fprintf(1,'Conversion of %d points complete\n', numpoints);

