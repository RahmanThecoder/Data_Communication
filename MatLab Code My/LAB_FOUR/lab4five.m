
fs = 8000; % Sampling frequency 
t = 0:1/fs:1-1/fs; % Time duration 
x = A1*sin(2*pi*(3*100)*t)+A2*cos(2*pi*(2*100)*t); 
SNR = snr(x);
bandwidth = obw(x,fs); % Bandwidth of the signal 
 
C = bandwidth*log2(1+SNR) % Capacity of the channel
L=2^(bitrate/2*bandwidth)
