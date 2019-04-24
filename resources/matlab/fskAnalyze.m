clear; clc;

% IFile = fopen("../../simulation/fsk_file_verilog_I.txt", "r");
IFile = fopen("../../simulation/fsk_file_I.txt", "r");
I = fscanf(IFile, "%d");
fclose(IFile);

% QFile = fopen("../../simulation/fsk_file_verilog_Q.txt", "r");
QFile = fopen("../../simulation/fsk_file_Q.txt", "r");
Q = fscanf(QFile, "%d");
fclose(QFile);

data = Q + 1i*I;
data = data(3: 3 + 1023);




figure; plot(real(data));
hold on; plot(imag(data));

% SR = 4e6;
% data_to_write = [zeros(1, SR/5) data.' zeros(1, SR/5)];
% maxData = max(data_to_write);
% data_to_write = 0.8*(data_to_write./sqrt(maxData*conj(maxData)));
% 
% figure; plot(real(data_to_write));
% hold on; plot(imag(data_to_write));

% wind = 32;
% figure; spectrogram(data, wind, 1, wind, SR, 'centered');

% write_complex_binary(data_to_write, "ble_ch36_verilog_MS_hellooo.bin");