clc
clear all
close all
%% Declaration of transformed vector 1
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
transform1 = abs(fft(S))
plot(fvec,2 * transform1 / L,'b')
hold on

%% Declaration of transformed vector 2
Tk = 0.95;
dt = 1/Fs;
t = 0:dt:(Tk-dt);
L = length(t)
df = Fs / L;
fvec = (0:L-1)*df;
S = sin(2*pi*f*t);

transform2 = abs(fft(S))
plot(fvec,2 * transform2 / L,'r--') 
%hold off
%% Hanning window implementation
okno = hanning(length(S))
size(okno)
sygnalPoOknie = okno.*S'

figure(2)
plot(t,S,"b--"); hold on
plot(t,sygnalPoOknie,"r")
plot(t,okno,'k:')


figure(1) 
plot(fvec, 2*(abs(fft(sygnalPoOknie))) / L ,'g')


