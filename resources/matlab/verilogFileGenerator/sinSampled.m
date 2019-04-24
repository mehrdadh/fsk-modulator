%This function gets the phase and gives you the sign based on the sampled
%value.
function [sinVal, cosVal] = sinSampled(phase,samplingRatio,levelBits,maxDigVal)

delPhase = pi/samplingRatio;
phase = mod(phase, 2*pi);

scaleRatioNumBits = 2^levelBits;

% maxSin = floor(sin(pi/2-pi/samplingRatio)*scaleRatioNumBits)/scaleRatioNumBits;
maxSin = sin(pi/2-pi/samplingRatio)-1/(2*scaleRatioNumBits);%-1/(2*scaleRatioNumBits) to solve the compution issue when we divide by maxSin

if( 0<=phase && phase<delPhase)
    sinVal = sign(sin(-1*delPhase))*floor(floor(abs(sin(-1*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits*maxDigVal);
    cosVal = sign(cos(-1*delPhase))*floor(floor(abs(cos(-1*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits*maxDigVal);
%     
%     sinVal = sign(sin(-1*delPhase))*floor(abs(sin(-1*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits;
%     cosVal = sign(cos(-1*delPhase))*floor(abs(cos(-1*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits;

%     sinVal = sign(sin(-1*delPhase))*floor(abs(sin(-1*delPhase))*scaleRatioNumBits)/scaleRatioNumBits;
%     cosVal = sign(cos(-1*delPhase))*floor(abs(cos(-1*delPhase))*scaleRatioNumBits)/scaleRatioNumBits;

%     sinVal = floor(floor(sin(-1*delPhase)*scaleRatioNumBits)/scaleRatioNumBits*maxSinScale);
%     cosVal = floor(floor(cos(-1*delPhase)*scaleRatioNumBits)/scaleRatioNumBits*maxSinScale);
else 
    for i= 1 : (samplingRatio+1)
        if (delPhase + 2*(i-1)*delPhase <= phase && phase < delPhase + 2*i*delPhase)
            sinVal = sign(sin(delPhase + 2*(i-1)*delPhase))*floor(floor(abs(sin(delPhase + 2*(i-1)*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits*maxDigVal);
            cosVal = sign(cos(delPhase + 2*(i-1)*delPhase))*floor(floor(abs(cos(delPhase + 2*(i-1)*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits*maxDigVal);
%             
%             sinVal = sign(sin(delPhase + 2*(i-1)*delPhase))*floor(abs(sin(delPhase + 2*(i-1)*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits;
%             cosVal = sign(cos(delPhase + 2*(i-1)*delPhase))*floor(abs(cos(delPhase + 2*(i-1)*delPhase)/maxSin)*scaleRatioNumBits)/scaleRatioNumBits;
%             sinVal = sign(sin(delPhase + 2*(i-1)*delPhase))*floor(abs(sin(delPhase + 2*(i-1)*delPhase))*scaleRatioNumBits)/scaleRatioNumBits;
%             cosVal = sign(cos(delPhase + 2*(i-1)*delPhase))*floor(abs(cos(delPhase + 2*(i-1)*delPhase))*scaleRatioNumBits)/scaleRatioNumBits;
%             sinVal = floor(floor(sin(delPhase + 2*(i-1)*delPhase)*scaleRatioNumBits)/scaleRatioNumBits*maxSinScale);
%             cosVal = floor(floor(cos(delPhase + 2*(i-1)*delPhase)*scaleRatioNumBits)/scaleRatioNumBits*maxSinScale);
        end
    end
end
end

