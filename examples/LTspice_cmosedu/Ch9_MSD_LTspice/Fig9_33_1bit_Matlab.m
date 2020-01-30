%Calculate SNR for Figure 9.33.
%LTspice raw file must be present. 
%Matlab script by Bob Hay with minor edits by Jake Baker.

clear all;
close all;
Kpath = 8;
OSR_init = 64;   %OSR is at fs,new. For a Kpath wide output the OSR is divided by Kpath.
VDD = 5;
rawfilename = '_Fig9_33_1bit_Matlab_MSD.raw';
[varname vRaw tRaw] = readLtsRaw(rawfilename);
row = zeros(Kpath, 1);
for linenum = 1:size(varname, 1)
    if findstr(varname(linenum,:), '(clk)'), clk_row = linenum -2; end
    if findstr(varname(linenum,:), '(vin)'), vin_row = linenum -2; end
    for k = 1:Kpath
        if findstr(varname(linenum,:), ['(b' int2str(k-1) ')']) %construct variable name
            row(k) = linenum -2; %rownum corresponding to the bit (bx) where x=k-1
            break;
        end
    end
end
b = vRaw(row, :); %bit values with Kpath or each type in its own row and each time in columns
clk  = vRaw(clk_row, :);
vin  = vRaw(vin_row, :);

%% Determine time (tclk) and outputs at the clock transitions
clk_sliced = clk>VDD/2;  %convert the clock analog values to binary, VDD/2
clktrans = find(clk_sliced(2:end)-clk_sliced(1:end-1) == 1); %clock transition times
b_c = b(:, clktrans) > VDD/2;
tclk = tRaw(clktrans);
Nc = length(tclk);

%% Cycle through parallel and serial modes
for modenum = 0:1  %set to 0 for serial, 1 for parallel
    %% Compute time domain signal
    if modenum == 0  %serial
        vout = VDD*reshape(b_c, Nc*Kpath, 1);  %for serial signal
        OSR = OSR_init;
        mode = 'Serial';
    else %parallel
        vout = (VDD/Kpath)*sum(b_c, 1)';
        OSR = OSR_init/Kpath;
        mode = 'Parallel';        
    end

    N=length(vout);
    vac = vout + VDD/2 - mean(max(vout) - min(vout));
    
    %% Compute intermediate values
    tmax = tclk(end);
    ts = tmax/(N-1);  %average time step between clocks
    t = 0:ts:tmax;
    fs = 1/ts;        %derived clock (sampling) frequency
    fd = 1/tmax;      %frequency steps in the fft
    fmax = fs/2;      %Nyquist frequency
    
    %% Apply Hann Window and compute spectrum
    w = hann(N);
    w1 = norm(w,1);
    Y = fft(w.*vac)/(w1); %Apply window and estimate FFT
    N1 = floor(N/2);  %lower half of fft indices
    Yl = Y(1:N1); %lower half of fft
    
    %% Estimate PSD
    Py = abs(Yl).^2; %Power spectrum
    % Remove residual DC component and effects due to windowing
    Py(1) = min(Py(1:20));  % Eliminate DC component; use minimum instead of zero so log stays in range
    Py(2) = Py(1);  % Eliminate windowing component due to any residual DC in time domain
    % For small input signal amplitudes change Py to Py(1:20) (if the input
    % is located in first 20 bins) in the line below
    [Pmax, fbin] = max(Py); %The tone power and index
    f = 0:fd:(N1-1)*fd;  %freq array
    
    %% Estimate SNR and Neff per Schreier's Appendix A
    nb = 5;
    signal_bins = fbin + (-(nb-1)/2:(nb-1)/2);
    inband_bins = 1:N/(2*OSR);
    noise_bins = setdiff(inband_bins,signal_bins);
    % Remove distortion tones
    second_tone_bins = 2*fbin-1 + (-(nb-1)/2:(nb-1)/2);
    noise_bins = setdiff(noise_bins,second_tone_bins);
    third_tone_bins = 3*fbin-1 + (-(nb-1)/2:(nb-1)/2);
    noise_bins = setdiff(noise_bins,third_tone_bins);
    % Calculate SNR (leave distortion terms in for SNDR)
    other_bins = max(noise_bins):N1;
    SNR = 10*log10(sum(Py(signal_bins))/sum(Py(noise_bins)));
    Neff = (SNR-1.78)/6.02;
        
    %% Plot Data
   scrsz = get(0,'ScreenSize');
   w=.2;

   figure('Position',[1+modenum*1.1*w*scrsz(3) (1-.3*(1.05*1))*scrsz(4) w*scrsz(3) .25*scrsz(4)])
   t1 = reshape([t; [t(2:end) 2*t(end)-t(end-1)]], 1, 2*length(t));
   v1 = reshape([vac'+VDD/2; vac'+VDD/2], 1, 2*length(vac));
   plot(t1, v1);
   %    plot(t, vac+VDD/2);
   hold on; plot(tRaw, vin, 'r'); hold off;
   xlabel ('Time'); ylabel ('Volts');
   title (['KD1S Output in ' mode ' mode']);
   legend ([{'Out'}; {'In'}]);
   grid on;

   figure('Position',[1+modenum*1.1*w*scrsz(3) (1-.3*(1.05*2))*scrsz(4) w*scrsz(3) .25*scrsz(4)])
   semilogx(f(signal_bins), 10*log10(Py(signal_bins)), 'g', 'linewidth', 2)  %plot signal spectrum
   hold on
   semilogx(f(noise_bins),  10*log10(Py(noise_bins)), 'or');
   semilogx(f(other_bins),  10*log10(Py(other_bins)), 'b');
   hold off
   xlabel ('Frequency'); ylabel ('dB');
   title (['KD1S Output Spectrum in ' mode ' mode, SNR = ' num2str(SNR) 'dB']);
   legend ([{'Signal'}; {'Noise'}; {'> B'}]);
   grid on;

   figure('Position',[1+modenum*1.1*w*scrsz(3) (1-.3*(1.05*3))*scrsz(4) w*scrsz(3) .25*scrsz(4)])
   otherrange = .5;  %portion of the plot devoted to "other" frequencies, use 1 for all
   Nother = min(N1, floor(max(noise_bins)/(1-otherrange))) - max(noise_bins);
   plot(f(signal_bins), 10*log10(Py(signal_bins)), 'g', 'linewidth', 2);  %plot signal spectrum
   hold on
   plot(f(noise_bins),  10*log10(Py(noise_bins)), 'or');
   plot(f(other_bins(1:Nother)),  10*log10(Py(other_bins(1:Nother))), 'b');
   hold off
   xlabel ('Frequency'); ylabel ('dB');
   title (['KD1S Output Spectrum in ' mode ' mode, SNR = ' num2str(SNR) 'dB']);
   legend ([{'Signal'}; {'Noise'}; {'> B'}]);
   grid on;

   %% Send summary SNR data to command window
   if modenum == 0  %serial
      fprintf(1, '\nKpath = %.0f OSR = %.0f', Kpath, OSR)
      fprintf(1, '\nFor 1-bit output (serial mode) at Kpath*fs = %.0f MHz', fs/1e6)
      fprintf(1, '\nSNR = %.2f, Neff = %.2f, B = %.2f MHz', SNR, Neff, fs/(2*OSR*1e6))
   else %parallel
      fprintf(1, '\nFor Kpath-bits output (parallel mode) at fs = %.0f MHz', fs/1e6)
      fprintf(1, '\nSNR = %.2f, Neff = %.2f, B = %.2f MHz', SNR, Neff, fs/(2*OSR*1e6))
   end

   %% To plot reconstructed signal pass data through two Sinc Filters
   B=ones(1,OSR)/OSR;A=1;
   voutf1 = filter(B,A,vout);
   voutf2 = filter(B,A,voutf1);
   vout_recon = voutf2(2*OSR:end); %remove filter start-up transient
   figure('Position',[1+(modenum+2)*1.1*w*scrsz(3) (1-.3*(1.05*1))*scrsz(4) w*scrsz(3) .25*scrsz(4)])
   tnew = t(2*OSR:end);
   tnew1 = reshape([tnew; [tnew(2:end) 2*tnew(end)-t(end-1)]], 1, 2*length(tnew));
   vout_recon1 = reshape([vout_recon'; vout_recon'], 1, 2*length(vout_recon));
   plot(tnew1, vout_recon1);
   %    plot(tnew, vout_recon);
   hold on; plot(tRaw, vin, 'r'); hold off;
   xlabel ('Time'); ylabel ('Volts');
   title (['Filtered KD1S Output in ' mode ' mode']);
   legend ([{'Out'}; {'In'}]);
   grid on;
    
end



