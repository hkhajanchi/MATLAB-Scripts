
%Create an Array for time values
t = linspace(-2,2,10000);   

%Create an empty array for function values
f = 0 * t; 

%Define Peak Voltage of the Square Wave
V = 1;

%Define the number of harmonics (Change N for desired #)
N=45;   

%Iterate through the numerical values of the harmonics and calculate the
%coeffiecents and values of the Fourier expansion of the odd-symmetry
%square wave 

%Fourier Expansion of a Square Wave:
%C_k = (jV)/(2pik) * (2exp(-jpik) - 1 - exp(-2pijk) 
%f(t) = sum (C_k * exp(jkwot) 
%Assume Wo to be 2*pi for the program

for k=-N:1:N
 
   %Skip the 0 term (messes up the function)  
   if (k == 0)
       continue; 
   end; 
   
   c_k = ((j*V)/(2*pi*k)) * ((2*exp(-j*pi*k)) - 1 - (exp(-2*pi*j * k)))
   f_k = c_k * exp(j *k * 2 * pi *t); 
   f = f + f_k;
    
end
plot(t,f)