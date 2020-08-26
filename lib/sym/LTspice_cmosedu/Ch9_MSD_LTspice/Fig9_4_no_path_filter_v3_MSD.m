%Plotting the output spectrum of the KD1S modulator in Fig. 9.4 with ideal
%components and no path filter. However, this version has Ts/2 forward 
%(unwanted) delay, see Sec. 9.1.5. This is an example of a bad design. 

clear all; close all;

rawfilename = '_Fig9_4_no_path_filter_v3_MSD.raw';
[varname vRaw tRaw] = readLtsRaw(rawfilename);

for linenum = 1:size(varname, 1)
    if findstr(varname(linenum,:), '(vout)')
        out_row = linenum -2;
    end
    if findstr(varname(linenum,:), '(clk)')
        clk_row = linenum -2;
    end
    %Other variables can be added to this list if they exist in the raw file.
end
vout = vRaw(out_row, :);
clk  = vRaw(clk_row, :);

clk_sliced = clk>0.5;  %convert the clock analog values to binary, VDD/2=0.5
clktrans = find(clk_sliced(2:end)-clk_sliced(1:end-1) == 1); %clock transition times
vout_clocked = vout(clktrans)>0.5;  %binary values of vout at the clock transition times
j=1;
for i=1:length(clk)-1
    if clk(i+1)>0.5 && clk(i)<0.5
        if vout(i+1)<0.5
            vout_new(j)=0;
        else
            vout_new(j)=1;
        end
        j=j+1;
    end
end

stairs(vout_new)
vout=vout_new;
vout=vout-mean(vout);

fs = 800e6; % effective sampling rate
fmax = fs;  % Plot only till fmax
N=length(vout);
OSR = 64;    % BW = (fs/2)/OSR
BW = (fs/2)/OSR
dt = 1.25e-9;
t1 = 0:dt:(N-1)*dt;  %time array
frange = 1/dt; % estimate the frequency range of the data

% Apply Hann Window
w = hann(N);
w1 = norm(w,1);
Y = fft(w'.*vout)/(w1/2); %Apply window to estimate FFT

N1 = floor(N*fmax/frange); %Plot range (up to fmax)
Yl = Y(1:N1); %lower half of fft
DC1=Yl(1);  DC2 = mean(vout);  %Scaling test: DC1 should equal DC2
%remove DC component
Yl(1)=Yl(3);  
Yl(2)=Yl(3);

% Estimate PSD
Py = abs(Yl).^2; %Power spectrum
[Pmax, Pindex] = max(Py); %The tone power and index
fbin = Pindex;
fres = frange/N;  %freq step size and resolution
f = 0:fres:(N1-1)*fres;  %freq array

%% Estimate SNR and Neff per Schreier's Appendix A
nb=5; 
signal_bins = fbin + [-(nb-1)/2:(nb-1)/2];
inband_bins = 0:N1/(2*OSR);
noise_bins = setdiff(inband_bins,signal_bins);

SNR = dbp(sum(Py(signal_bins+1))/sum(Py(noise_bins+1)))
Neff = (SNR-1.78)/6.02

%% Plot Spectrum
figure(1)
plot(f, 10*log10(Py))  %plot spectrum
xlabel ('Frequency'); ylabel ('dB');
title ('KD1S Output Spectrum'); 
grid on;

figure(2)
semilogx(f, 10*log10(Py), 'r')  %plot spectrum
xlabel ('Frequency'); ylabel ('dB');
title ('KD1S Output Spectrum');
grid on;
