%Problem 3B

%Create an Array for time values
t = linspace(-2,2,10000);   

%Create an empty array for function values
f = 0*t;

%Define Peak Voltage of the Square Wave
V = 5;

%Define the number of harmonics (User Input)
N = input('Number of Harmonics:');   

%Define the value at k = 0 
f = 5/pi;

%initalize variables 
c_k = 0; 
f_k = 0; 

for k = -N:1:N 
    
    if k == 0 
        continue
    elseif k == -1 
         k 
         c_k = j * (V/4)
         f_k = (c_k * exp(2*pi*j*k*t));
         f = f + f_k;
         continue
    elseif k == 1 
         k
         c_k = -j * (V/4)
         f_k = (c_k * exp(2*pi*j*k*t));
         f = f + f_k;
         continue
    elseif mod(abs(k),2) == 0
        k
        c_k = -V /(pi * ((k^2) - 1))
        f_k = (c_k * exp(2*pi*j*k*t));
        f = f + f_k;
        continue
    else 
        continue
    end
end 

plot (t,f);
title ('Fourier Series of Rectified Signal'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)');
