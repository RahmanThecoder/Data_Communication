% AB-CDEFG-H -> ID- 17-34272-1
fs = 10000;
t = 0:1/fs:0.1; 
f1 = 100; % Frequency of first signal
f2 = 100; % Frequency of second signal
A1 = 24; % Amplitude of first signal
A2 = 17; % Amplitude of second signal
x1 = A1*cos(2*pi*3*f1*t); % First Signal 
x2 = A2*cos(2*pi*7*f2*t); % Second Signal %Plotting both signals in time domain 
x3=x1+x2; % sum of two signals
 
sig = x3; % Original signal, a sine wave 
partition = [-2.5,-1.5, -0.5, 0.5, 1.5,2.5]; % Length 6, to represent 7 intervals 
codebook =[-3:3]; % Length 5, one entry for each interval
[index,quants] = quantiz(sig,partition,codebook); % Quantize. 
figure 
plot(t,sig,'x',t,quants,'.')
legend('Original signal','Quantized signal');