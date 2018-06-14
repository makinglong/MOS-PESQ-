clc;
close all
clear all
tic
%profile on 

%function getmfcc=mfcc(S)
[S,fs,bits] = wavread('h1.wav');
[x1,x2] = vad(S)
% a = mfcc(S)
toc
h=LPCC(S)
surf(h)