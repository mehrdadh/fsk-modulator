%%
clear; clc;

fs = 4e6;
% Sample packets
% Beacon: 'hello' on ch 38
%final_packet = [0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1];
% Beacon: 'hellooo' ch 38
%final_packet = [0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 1 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 1 1 1 1 0 1 1];
% Beacon: 'hellooo' ch 36
final_packet = [0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 0 0 0 1 1 1 0 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0 0 0 1 0 1 1 1 1 0 0 0 1 1 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 1 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 0 1 0 0 1 0 1 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 0 1 0 1 1 1 0 0 0 1 1 0 0 0 1 0 1 0 1 0 1 1 0 1];
% Beacon: 'hellooo' ch 37
%final_packet = [0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1 1 0 1 0 1 0 1 1 0 0 0 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 1 0 1 1 1 0 0 0 1 1 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 0 1 0 1 0 0 1 0 0 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 1 1 1 0 1 1 0 1 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1];

%final_packet = [0 1 0 1 0 1 0 1 0 1 1 0 1 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 0 1 0 1 1 1 0 0 0 1 0 0 1 0 1 0 1 1 1 0 0 0 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 0 1 1 0 0 1 1 0 0 0 0 0 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 0 1 1 0 0 1 0 0 0 1 1 1 0 1 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 1 0 0 0 1 0 0 1 1 0 0 1 1 0 1 1 1];

% final_packet = [1 0 1 1];
    
% FSK modulator
hmod = comm.FSKModulator('ModulationOrder', 2, ...
      'BitInput', true, ...
      'SymbolMapping', 'Binary', ... 
      'FrequencySeparation', 500e3, ...
      'SamplesPerSymbol',fs/1e6, ...
      'SymbolRate', 1e6);

% The modulator above flips the frequency of the bits so invert them
bits_to_modulate = ~final_packet;
baseband_fsk_packet = step(hmod, bits_to_modulate');

% Debugging: test that the above bits are decoded correctly
% hDemod = comm.FSKDemodulator('ModulationOrder', 2, ...
%       'BitOutput', true, ...
%       'SymbolMapping', 'Binary', ... 
%       'FrequencySeparation', 500e3, ...
%       'SamplesPerSymbol', fs/1e6, ...
%       'SymbolRate', 1e6);
% packet_with_zeros = 0.8*[zeros(1,fs/5) baseband_fsk_packet' zeros(1,fs/5)];
% %write_complex_binary(packet_with_zeros, 'hellooo_beacon_fsk_ch38_5M1.dat');
% %packet_with_zeros = read_complex_binary('hellooo_beacon_fsk_ch38_5M1.dat');
% start = fs/5+1;
% figure
% packet = packet_with_zeros(start:start+length(baseband_fsk_packet)-1)
% plot(real(packet));
% hold on
% plot(real(0.8*baseband_fsk_packet));
% test = step(hDemod, packet);

% GFSK modulator: Optional GFSK modulation which BLE spec requires
% Either method generates decodeable packets.
gfskMod = comm.CPMModulator('ModulationOrder', 2, ...
               'FrequencyPulse', 'Gaussian', ... 
               'BandwidthTimeProduct', 0.5, ...
               'ModulationIndex', 1, ...
               'BitInput', true, ...
               'SamplesPerSymbol',fs/1e6);
baseband_gfsk_packet = step(gfskMod, bits_to_modulate');


%% Save the FSK packet
packet_with_zeros = 0.8*[zeros(1,fs/5) baseband_gfsk_packet' zeros(1,fs/5)];
write_complex_binary(packet_with_zeros, 'beacon_gfsk_ch36_4M.bin')


% x = read_complex_binary('beacon_gfsk_ch36_4M_vikram.dat', 1e7);
% y = read_complex_binary('beacon_gfsk_ch36_4M.bin', 1e7);

% write_complex_binary(x, 'beacon_gfsk_ch36_4M_vikram_new.dat')

% figure; plot(real(baseband_gfsk_packet));
% hold on; plot(imag(baseband_gfsk_packet));

x = read_complex_binary('ble_ch36_verilog_MS_hellooo.bin', 1e7);

start = fs/5 + 1;
figure; plot(imag(x(start: start + 1023)));
hold on; plot(imag(packet_with_zeros(start: start + 1023)));


%% Save the GFSK packet
% packet_with_zeros = [baseband_gfsk_packet'];
% save('beacon_gfsk_ch36_4M.mat', 'baseband_gfsk_packet');
% write_complex_binary(packet_with_zeros, 'beacon_gfsk_ch36_4M.dat')
%% Save as .mat file
% save('beacon_ch36_5M.mat','baseband_fsk_packet','baseband_gfsk_packet');
%%
% nbits = 12;
% packet_real = real(baseband_fsk_packet)*(2^nbits-1);
% packet_imag = imag(baseband_fsk_packet)*(2^nbits-1);