%Problem 4A 
%Take the fourier transform of the impulse response, and then create a
%transfer function based off of the fourier transform to create a bode plot
%for the system

%Define Impulse Response 
syms x 
sym_CT = exp(-2*x) * heaviside(x); 

%Fourier Transform of Impulse Response 
sym_FT = fourier(sym_CT);

%I took the coefficents from the the fourier transform of the system and
%used them to create a transfer function in MATLAB
%Using the transfer function, I plotted the system frequency spectra using
%MATLAB's bode() function

num = [1]; 
denom = [1 2]; 

H = tf(num,denom);

bode(H)