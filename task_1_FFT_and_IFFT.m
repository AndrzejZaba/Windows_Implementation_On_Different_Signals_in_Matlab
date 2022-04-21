clc
clear all
close all
%% declaration of frequency vector
Fs = 140;
dt = 1/Fs;
Tk = 2;
t = 0:dt:(Tk-dt);

L = length(t)

df = Fs / L;

fvec = (0:L-1)*df;
%% 
f = 60;
x = sin(2*pi*f*t);

transform = fft(x);
inverseTransform = ifft(transform);

plot(fvec,x,'b')
hold on
plot(fvec,inverseTransform,'r--')

maxBlad = 0;
for k = 1:L
   blad(k) =  abs(x(k) - inverseTransform(k)); 
end

maxBlad = max(blad)


