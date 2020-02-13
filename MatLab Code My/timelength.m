clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 20;
% Make 0.1 seconds sampled every 1/1000 of a second
%t = -3/1000 : 3/1000 : 3/20*30;
%t =linspace(-2*pi,2*pi,400);
t=0:1/1000:0.20;
%%
% 
% <<FILENAME.PNG>>
% 
% Define sine wave parameters.
f1 = 30; % per second
T1 = 1/f1; % period, seconds
a1 = 1; % amplitude
f2 = 60; % per second
T2 = 1/f2; % period, seconds
a2 = 1; % amplitude
% Make signals.
signal1 = a1 * cos(2*pi*t/T1+pi/6);
signal2 = a2 * cos(2*pi*t/T2+pi/6);
signal = signal1 + signal2;
subplot(3,1,1);
plot(t, signal1, 'r.-', 'LineWidth', 2, 'MarkerSize', 16);
hold on;
subplot(3,1,2);
plot(t, signal2, 'm.-', 'LineWidth', 2, 'MarkerSize', 16);
subplot(3,1,3);
plot(t, signal, 'b.-', 'LineWidth', 2, 'MarkerSize', 16);
grid on;
title('Sine Waves', 'FontSize', fontSize);
xlabel('Time', 'FontSize', fontSize);
ylabel('Signal', 'FontSize', fontSize);
% Make bolder x axis
line(xlim, [0,0], 'Color', 'k', 'LineWidth', 3);
legend('30 Hz', '60 Hz', 'Sum');
