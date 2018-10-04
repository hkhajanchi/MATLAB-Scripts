%Advanced Engineering Math II 
%MATLAB Homework 2 
%Hussain Khajanchi 
%Cosine Expansion Script


function [x,y] = cosineExpansion(xMin, xMax, dx, nMax) 

x = xMin:dx:xMax; 

y = 1/2; %Initialize Y 

for i = 1:1:nMax 
    yTemp = (2 / (i * pi)) * sin ( (i * pi)/ 2 ) * cos (i * pi * x); 
    y = y + yTemp; 
end 
 
plot(x,y)
