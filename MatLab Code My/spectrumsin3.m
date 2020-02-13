

% Take spectrum and plot it.
spectrum = fft(signal);
numElements = length(spectrum)
indexOf0 = numElements / 2
shiftedSpectrum = fftshift(abs(spectrum));
subplot(2, 1, 2);
f = (1 / sampleTime) * linspace(-numElements/2, numElements/2, numElements);
plot(f, shiftedSpectrum, 'r.-', 'LineWidth', 2, 'MarkerSize', 16);
grid on;
title('Spectrum of sum of 2 Sine Waves', 'FontSize', fontSize);
xlabel('Frequency', 'FontSize', fontSize);
ylabel('Power', 'FontSize', fontSize);
% Make bolder y axis
line([indexOf0, indexOf0], ylim, 'Color', 'k', 'LineWidth', 3);