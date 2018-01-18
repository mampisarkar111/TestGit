clc
clear all
close all
omega = 1:8000;
period = 800;
y = sin(2*pi*omega / period);
y1 = sin((2*pi*omega / period)+30);
subplot(211);
plot(omega, y, 'b-');hold on
plot(omega, y1, 'b-');
title('Signal  (cosine)');
grid on;
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
[counts binValues] = hist(y, 64);[counts1 binValues1] = hist(y1, 64);
subplot(212);
bar(binValues, counts);hold on;
bar(binValues1, counts1);
title('PDF');
grid on
%%
 %clf;clc;clear;
 VFF=rand(10,1)
    VFF_1=VFF.*hanning(length(VFF));%% windowing
    N= length(VFF_1);
    dt=0.001;
    fs=1/dt
    tmax=(N-1)*dt;
    t=0:dt:tmax;
    tn=N/fs%% Total sample length
    fmin=1/tn
    fmax=0.5*fs;%%nyquist
    f=(1:N/2)/(N/2)*fmax;%define frequency
    f=f';
    length(f)
    y=fft(VFF_1);
    y(1)=[];
    py=abs(y(1:N/2)).^2;%% Define power spectrum
    length(py)
    figure
    plot(f,py)%% plot power spectrum against Frequency
    xlabel('Frequency (HZ)');title('Power Spectrum');ylabel('power');