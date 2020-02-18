% AB-CDEFG-H -> ID- 17-34272-1
fs = 100000; % Sampling frequency 
t = 0:1/fs:1-1/fs; % Time duration
f1 = 100; % Frequency of first signal
f2 = 100; % Frequency of second signal
A1 = 24; % Amplitude of first signal
A2 = 17; % Amplitude of second signal
x1 = A1*cos(2*pi*3*f1*t); % First Signal 
x2 = A2*cos(2*pi*7*f2*t); % Second Signal %Plotting both signals in time domain 
x3=x1+x2; % sum of two signals
plot(t,x1,'k--o','LineWidth',1.5) 
hold on
plot(t,x2,'b-*','LineWidth',2) 
hold off
plot(t,x3);
xlabel('time in seconds') 
ylabel('Amplitude in volts') 
title('Signals of different Frequencies') 

%Take fourier transform 
fx3 = fft(x3); 
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,fs); %Since the signal is complex, we need to plot the magnitude to get it to %look right, so we use abs (absolute value) 
figure; 
plot(f, abs(fx3));
title('magnitude FFT of Cosine'); 
axis([-100 100 0 2])
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth=obw(fx3,fs);