signin('theengineear', 'o9zlr0hy6z')

%read audio text file  
sigtext = urlread('https://raw.githubusercontent.com/plotly/documentation/reorganization/aux/fft-matlab'); 

%conver to audio samples 
sig = str2num(sigtext); 

%sampling frequency
fs = 44100; 

%desired signal duration 
dur = 1;

%signal truncation
sig = sig(1:dur*fs,1);  

%time axis vector
t = linspace(0,dur,fs); 

%fft length
N = 4096; 

%take the STFT of the signal 
S = stft(sig,N-N/4); 

%Max frequency to visualize 
maxFreq = N/8; 

%time vector
time = linspace(0,dur,size(S,2)); 

%frequency vector
freq= linspace(0,fs*maxFreq/N,size(S(1:maxFreq,:),1)); 

%set colour scale range (dB)
clims = [-100 60]; 

%plot the STFT heatmap 
fig = figure; 
imagesc(time,freq,20*log10(abs(S(1:maxFreq,:))),clims)
colorbar
axis xy
xlabel('TIME (s.)')
ylabel('FREQUENCY (Hz.)')
title(['C4 GUITAR: MAGNITUDE SPECTROGRAM ANALYSIS']);

% PLOTLY 
response = fig2plotly(fig, 'strip', 1); 
plotly_url = response.url; 
