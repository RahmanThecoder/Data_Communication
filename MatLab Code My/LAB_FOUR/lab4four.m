close all;
clc; 
fs = 8000; % Sampling frequency 
t = 0:1/fs:1-1/fs; % Time duration 
cx = A1*sin(2*pi*(3*100)*t)+A2*cos(2*pi*(2*100)*t); 
bandwidth = obw(cx,fs); % Bandwidth of the signal
L=2; % Level of the signal 
BitRate = 2*bandwidth*log2(L) 