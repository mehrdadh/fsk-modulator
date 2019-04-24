clear; clc;

bitL = 26;
SR = 4e6;
scale = (2^12)-1;



data_vector = [];
%%scale packet
load 'beacon_gfsk_ch36_4M.mat';
data_to_write = floor(scale.*(baseband_gfsk_packet));

% load 'sinWave_fc500k_SR4M.mat';
% data_to_write = floor(scale.*(sig));

% memLength = ceil(log2(length(data_down)));
memLength = length(data_to_write);
memLengthBits = ceil(log2(memLength));

% sineFile = fopen("dataMem.v", "w");
sineFile = fopen("../../../hdl/ble_packet" + ".v", "w");
fprintf(sineFile, "module ble_packet" + "(addr, data);\n");
fprintf(sineFile, "input [%d:0] addr;\n", memLengthBits-1);
fprintf(sineFile, "output reg\t[%d:0] data;\n", bitL-1);
fprintf(sineFile, "\n");

% fprintf(sineFile, "reg [%d:0] sineTable[0:%d];\n", bitL-1, (2^memLengthBits)-1);

fprintf(sineFile, "always @(addr) begin\n");
fprintf(sineFile, "\t case(addr)\n");
for i=0:1:memLength-1
    if (i+1 > length(data_to_write))
        realVal = 0;
        imagVal = 0;
    else
        realVal = real(data_to_write(i+1));
        imagVal = imag(data_to_write(i+1));
    end
    
    realString = dec2twos(realVal, 13);
    imagString = dec2twos(imagVal, 13);
    
    fprintf(sineFile,...
    "\t\t%d'd%d:\t data <= %d'b%s%s;\n",...
    memLengthBits, i, bitL, realString, imagString);
   
end
fprintf(sineFile, "\t\tdefault: data <= %d0;\n", bitL);
fprintf(sineFile, "\t endcase\n");
fprintf(sineFile, "end\n");
fprintf(sineFile, "endmodule\n");


