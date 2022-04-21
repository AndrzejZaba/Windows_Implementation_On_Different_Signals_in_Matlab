clc
clear all
close all
%% Declaration of time vector
Tk = 2;
dt = 0.1;
t=0:dt:Tk;
L = length(t);

%% Declaration of frequancy vector
Fs = 100;
dt = 1/Fs;
Tk = 2;
t = 0:dt:(Tk-dt);
L = length(t)
df = Fs / L;
fvec = (0:L-1)*df;


%% Impulse
X1 = zeros(1,L);
X1(8) = 5;

figure(1)
plot(t,X1)
figure(11)
plot(fvec,2*abs(fft(X1))/ L )

%% Two Impulses

X2 = zeros(1,L);
X2(8) = 5;
X2(20) = 4;

figure(2)
plot(t,X2)
figure(12)
plot(fvec,2*abs(fft(X2))/ L )

%% Noise 
X3 = zeros(1,L);

for k = 1:L
    X3(k) = randn()
end

figure(3)
plot(t,X3)
figure(13)
plot(fvec,2*abs(fft(X3))/ L )

%% Triangle Signal


X4 = t;
X4 = [X4 fliplr(X4)];
figure(7)
plot(X4)

t1=1:dt:(Tk-dt)+1;
tt = [t t1];

N2 = length(tt)
df2=Fs/N2
fvec2=df2*(0:N2-1)
figure(17)
plot(fvec2,2*abs(fft(X4))/ N2 )

signal1 = triang(length(X4));
signal2 = repmat(signal1,10,1);
figure(4)
plot(signal2)
%figure(14)
%plot(fvec,2*abs(fft(signal2))/ L )



%% Ramp
X5 = 35 * t;
figure(5)
plot(t,X5)

figure(15)
plot(fvec,2*abs(fft(X5))/ L )
%% Step
 
X6 = zeros(1,L);
X6(t>=1.5) = 5;

figure(6)
plot(t, X6)
figure(16)
plot(fvec,2*abs(fft(X6))/ L )


