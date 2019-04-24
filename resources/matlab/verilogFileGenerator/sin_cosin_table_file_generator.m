clear;clc;
% SF = 12;
% BW = 31.25e3;
% SR = 4e6;
% symSize = 2^SF;

samplingRatio = 4;
% sampleRatioSize = num2str(ceil(log2(2048)));
sinLevelBits = 6;       %%number of bit levels
maxDigVal = 2^12-1;     %%max digital value in radio
sineSize = samplingRatio*2-1;
bitSize = 13;

delPhase = pi/samplingRatio;
scaleRatioNumBits = 2^sinLevelBits;

sinTable = [];
cosTable = [];
for i=0: sineSize
    [sinVal, cosVal] = sinSampled(i*delPhase, samplingRatio, sinLevelBits, maxDigVal);
    sinTable = [sinTable sinVal];
    cosTable = [cosTable cosVal];
end
figure; plot([sinTable]);
hold on; plot([cosTable]);

%%write to file
sinTableFile = fopen("./sinIdeal.v", "w");
cosTableFile = fopen("./cosIdeal.v", "w");
%%include files
fprintf(sinTableFile, "`include\t""LoRaTXDefines.v""\n");
fprintf(sinTableFile, "`include\t""RadioDefines.v""\n\n");

fprintf(cosTableFile, "`include\t""LoRaTXDefines.v""\n");
fprintf(cosTableFile, "`include\t""RadioDefines.v""\n\n");
%%module definition
fprintf(sinTableFile, "module sinIdeal(angle, sinOut);\n\n");
fprintf(sinTableFile, "input\t\t[`PRECISION-1:0]\tangle;\n");
fprintf(sinTableFile, "output reg\t[`SinSize-1:0]\t\tsinOut;\n");
fprintf(sinTableFile, "\n");
fprintf(sinTableFile, "reg [`PRECISION-1:0]\tindex;\n");
fprintf(sinTableFile, "always @(*) begin\n");
fprintf(sinTableFile, "\tindex = angle >> (25-`Sine_SR_Bits);\n");
fprintf(sinTableFile, "end\n\n");
fprintf(sinTableFile, "always @(index) begin\n");

fprintf(cosTableFile, "module cosIdeal(angle, cosOut);\n\n");
fprintf(cosTableFile, "input\t\t[`PRECISION-1:0]\tangle;\n");
fprintf(cosTableFile, "output reg\t[`SinSize-1:0]\t\tcosOut;\n");
fprintf(cosTableFile, "\n");
fprintf(cosTableFile, "reg [`PRECISION-1:0]\tindex;\n");
fprintf(cosTableFile, "always @(*) begin\n");
fprintf(cosTableFile, "\tindex = angle >> (25-`Sine_SR_Bits);\n");
fprintf(cosTableFile, "end\n\n");
fprintf(cosTableFile, "always @(index) begin\n");
%%first if
fprintf(sinTableFile, "\tif (index < ");
fprintf(cosTableFile, "\tif (index < ");

%%sin file
firstTime = 1;
lastSinVal = sinTable(1);
for i=1:1:length(sinTable)
    if (sinTable(i) ~= lastSinVal)
        if (~firstTime)
            fprintf(sinTableFile, "\telse if (index < ");
        end 
        fprintf(sinTableFile, num2str(i));
        fprintf(sinTableFile, ")\n");
        fprintf(sinTableFile, "\t\t");
        fprintf(sinTableFile, "sinOut\t=\t");
        val = dec2twos(lastSinVal, bitSize);
        fprintf(sinTableFile, strcat("`SinSize'b", num2str(val)));
        fprintf(sinTableFile, ";\n");
        lastSinVal = sinTable(i);
        firstTime = 0;
    else
        lastSinVal = sinTable(i);
    end
end
fprintf(sinTableFile, "\telse\n");
fprintf(sinTableFile, "\t\tsinOut\t=\t");
val = dec2twos(lastSinVal, bitSize);
fprintf(sinTableFile, strcat("`SinSize'b", num2str(val)));
fprintf(sinTableFile, ";\n");
fprintf(sinTableFile, "end\n");
fprintf(sinTableFile, "endmodule\n");
fclose(sinTableFile);

%%cos file
firstTime = 1;
lastCosVal = cosTable(1);
for i=1:1:length(cosTable)
    if (cosTable(i) ~= lastCosVal)
        if (~firstTime)
            fprintf(cosTableFile, "\telse if (index < ");
        end 
        fprintf(cosTableFile, num2str(i));
        fprintf(cosTableFile, ")\n");
        fprintf(cosTableFile, "\t\t");
        fprintf(cosTableFile, "cosOut\t=\t");
        val = dec2twos(lastCosVal, bitSize);
        fprintf(cosTableFile, strcat("`SinSize'b", num2str(val)));
        fprintf(cosTableFile, ";\n");
        lastCosVal = cosTable(i);
        firstTime = 0;
    else
        lastCosVal = cosTable(i);
    end
end
fprintf(cosTableFile, "\telse\n");
fprintf(cosTableFile, "\t\tcosOut\t=\t");
val = dec2twos(lastCosVal, bitSize);
fprintf(cosTableFile, strcat("`SinSize'b", num2str(val)));
fprintf(cosTableFile, ";\n");
fprintf(cosTableFile, "end\n");
fprintf(cosTableFile, "endmodule\n");
fclose(cosTableFile);