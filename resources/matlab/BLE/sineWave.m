clear;
clc;

l =  1024;
SR = 4e6;
t = 1/SR: 1/SR: l*(1/SR);

fc = 500e3;
sig = exp(1i*2*pi*fc.*t);
save('sinWave_fc500k_SR4M.mat', 'sig');

figure; spectrogram(sig, 128, 128-1, 128, 4e6, 'centered');