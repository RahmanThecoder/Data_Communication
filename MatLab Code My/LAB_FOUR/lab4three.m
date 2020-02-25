close all;
clc; %Define number of samples to take
% AB-CDEFG-H follows-> 17-34272-1  
fs = 8000; % Sampling frequency 
f = 400; %Hz %Define signal 
t = 0:1/fs:1-1/fs; 
A1=17;
A2=17;
A_averg=(A1*A1/2)+(A2*A2/2);
s=11;
powfund = A_averg^2/2; 
%s = 0.1; 
varnoise = s^2; 
%signal = A*sin(2*pi*f*t); %signal 
signal=A1*sin(2*pi*(3*100)*t)+A2*cos(2*pi*(2*100)*t);
noise = s*randn(size(t)); %noisy signal 
%noisySignal = signal + noise;   
SNR = snr(signal,noise) %Calculation of SNR using snr function 
defSNR = 10*log10(powfund/varnoise) %Calculation of SNR following the definition

SNR = snr(signal)
bandwidth = obw(signal,fs); % Bandwidth of the signal 
 
C = bandwidth*log2(1+SNR) % Capacity of the channel
L=2^(C/2*bandwidth) %capacity as bit rate to calculate how many levels we need