%Advanced Engineering Math II 
%MATLAB Homework 2 
%Hussain Khajanchi 
%Sine-Expansion Script

function [x,y] = sineExpansion(xMin,xMax,dx,nMax)


x = xMin:dx:xMax; 

y = 0; %Initialize Y 

for i = 1:1:nMax 
    yTemp = (2/(pi*i)) * (1 - cos ((i*pi)/2)) * sin (i * pi * x);
    y = y + yTemp; 
    
end 


