clc
clear all
close all
%% Declaration of basic parameters and signal
% taken directly form taks 3
Tk = 1;
Fs = 200
dt = 1/Fs;
t = 0:dt:(Tk-dt);
L = length(t)
df = Fs / L;
fvec = (0:L-1)*df;
f=11;

S = sin(2*pi*f*t);

figure(1)
plot(t,S,'b')
hold on
%% Hanning's Window
hann = hanning(length(S));
size(hann);
AfterHanning = hann.*S';

plot(t,hann,'k:')
plot(t,AfterHanning,'r')


figure(2)
plot(t,S,'b'); hold on
%% Hamming's Window
hamm = hamming(length(S))
size(hamm)
AfterHamming = hamm.*S'

plot(t,hamm,'k:')
plot(t,AfterHamming,'r')


figure(3)
plot(t,hann,'b:')
hold on
plot(t,hamm,'r:')
