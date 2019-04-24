function [output_data, freq_range] = fft_func(input_data, sampling_freq)
%BANDPASS Summary of this function goes here
%   Detailed explanation goes here
        
    Fs = sampling_freq;
    T = 1/Fs;
    L = length(input_data);
    t = (0:L-1)*T;
    
    Y  = fft(input_data);
    P1 = abs(Y);
%     output_data = P1(1: floor(L/2)+1);
    output_data = P1;
    freq_range = Fs*((-L/2)+1:(L/2))/L;
end