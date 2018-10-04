%Problem 4B 

%Calculate and plot the series of coefficents for the square wave 

clc;
clear all;
n = 40; 
c_k = 1:1:n; 

for k = 1:length(c_k)
    if k == 0
        continue
    elseif mod(k,2) == 0
        c_k(k) = 0;
        continue
    else 
        c_k(k) =  -j * (4/(pi*k));
        continue 
    end 
end

%Magnitude Component of Frequency Spectrum 
abs_ck = abs(c_k); 
subplot(2,2,1); 
stem (abs_ck);
title ('Magnitude Spectrum of x(t)'); 
xlabel ('Frequency (rad/s)'); 
ylabel ('|Ck|');

%Phase Component 
ck_phase = angle(c_k) * (180/pi); 
subplot(2,2,2);
stem (ck_phase); 
title ('Phase Spectrum of x(t)');
xlabel('Frequency (rad/s)'); 
ylabel('Angle (degrees)'); 


%Frequency Spectrum of y(t) 

%Using H(jkwo) = 1/2+jk, we can multiply the input signal coefficents
%with H(jkwo) to get the output signal coefficents 

c_ky = 1:1:length(c_k); 

for k = 1:length(c_ky)
    if k == 0
        continue
    elseif mod(k,2) == 0
        c_ky(k) = 0;
        continue
    else 
        c_ky(k) =  -j * (4/(pi*k)) * (1/(2+(j*k)));
        continue 
    end 
end

%Magnitude Component of y(t)
abs_cky = abs(c_ky); 

%Phase Component of y(t) 
phase_cky = angle(c_ky) * (180/pi); 

subplot(2,2,3)
stem(abs_cky); 
title('Magnitude Spectrum of y(t)'); 
xlabel('Frequency (rad/s)'); 
ylabel('|Cky|');

subplot(2,2,4)
stem(phase_cky); 
title('Phase Spectrum of y(t)'); 
xlabel('Frequency (rad/s)'); 
ylabel('Angle (degrees)');







