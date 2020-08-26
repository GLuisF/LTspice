%Plotting the output spectrum of the KD1S modulator in Fig. 9.4 with ideal
%components, WITH decimation followed by a path filter. Ts/4 added 
%forward delay.

clear all; close all;

rawfilename = '_Fig9_4_with_decimation_with_path_filter_v2_MSD.raw';
[varname vRaw tRaw] = readLtsRaw(rawfilename);

for linenum = 1:size(varname, 1)
    if findstr(varname(linenum,:), '(b0)')
        b0_row = linenum -2;
    end
     if findstr(varname(linenum,:), '(b1)')
        b1_row = linenum -2;
     end
     if findstr(varname(linenum,:), '(b2)')
        b2_row = linenum -2;
     end
     if findstr(varname(linenum,:), '(b3)')
        b3_row = linenum -2;
    end
    if findstr(varname(linenum,:), '(clk)')
        clk_row = linenum -2;
    end
    %Other variables can be added to this list if they exist in the raw file.
end
b0 = vRaw(b0_row, :);
b1 = vRaw(b1_row, :);
b2 = vRaw(b2_row, :);
b3 = vRaw(b3_row, :);
clk  = vRaw(clk_row, :);

%% Determine time (tclk) and outputs at the clock transitions
clk_sliced = clk>0.5;  %convert the clock analog values to binary, VDD/2=0.5
clktrans = find(clk_sliced(2:end)-clk_sliced(1:end-1) == 1); %clock transition times
b0_c = b0(clktrans)>0.5;  %binary values of b0 at the clock transition times
b1_c = b1(clktrans)>0.5;
b2_c = b2(clktrans)>0.5;
b3_c = b3(clktrans)>0.5;
tclk = tRaw(clktrans);

%% Do some housekeeping
N = length(clktrans);
tmax = tclk(N);
ts = tmax/(N-1); %average time step between clocks
fs = 1/ts;        %derived clock (sampling) frequency
fd = fs/N;        %frequency steps in the fft
fmax = fs/2;      %Nyquist frequency
OSR = 8;    % OSR is 64 but we decimated by 8 already
BW = (fs/2)/8
%% Compute time domain signal
v_weighted=(b3_c*8+b2_c*4+b1_c*2+b0_c)/8;
vac = v_weighted - mean(v_weighted);

%% Apply Hann Window and compute spectrum
w = hann(N);
w1 = norm(w,1);
Y = fft(w'.*vac)/(w1/2); %Apply window to estimate FFT
N1 = floor(N/2);  %lower half of fft indices
Yl = Y(1:N1); %lower half of fft

%% Estimate PSD
Py = abs(Yl).^2; %Power spectrum
%remove residual DC component and effects due to windowing
Py(1) = min(Py);  % Eliminate DC component; use minimum instead of zero so log stays in range
Py(2) = Py(1);  % Eliminate windowing component due to any residual DC in time domain
[Pmax, fbin] = max(Py); %The tone power and index
f = 0:fd:(N1-1)*fd;  %freq array

%% Estimate SNR and Neff per Schreier's Appendix A
nb=5; 
signal_bins = fbin + [-(nb-1)/2:(nb-1)/2];
inband_bins = 0:N/(2*OSR);
noise_bins = setdiff(inband_bins,signal_bins);

SNR = 10*log10(sum(Py(signal_bins+1))/sum(Py(noise_bins+1)))
Neff = (SNR-1.78)/6.02

%% Plot Spectrum
figure(1)
plot(f, 10*log10(Py))  %plot spectrum
xlabel ('Frequency'); ylabel ('dB');
title ('KD1S and Path Filter Output Spectrum'); 
grid on;

figure(2)
semilogx(f, 10*log10(Py), 'r')  %plot spectrum
xlabel ('Frequency'); ylabel ('dB');
title ('KD1S and Path Filter Output Spectrum');
grid on;
