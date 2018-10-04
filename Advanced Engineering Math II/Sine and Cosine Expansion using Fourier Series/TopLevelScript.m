%Advanced Engineering Math II 
%MATLAB Homework 2 
%Hussain Khajanchi 
%Top-Level Script

xMin = -4; 
xMax = 4; 
dx = 0.001;
nMax = 0; %Holder Variable

%N = 1 
nMax = 1; 
[xValuesSine1,yValuesSine1] = sineExpansion(xMin,xMax,dx,nMax);
[xValuesCosine1,yValuesCosine1] = cosineExpansion(xMin,xMax,dx,nMax); 

subplot (211) 
plot(xValuesSine1,yValuesSine1); 
xlabel("x"); 
title("Sine Expansion for N = 1"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y

subplot (212) 
plot(xValuesCosine1,yValuesCosine1); 
xlabel("x"); 
title("Cosine Expansion for N = 1"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y


pause(10);

%N = 4 
nMax = 4; 
[xValuesSine4,yValuesSine4] = sineExpansion(xMin,xMax,dx,nMax);
[xValuesCosine4,yValuesCosine4] = cosineExpansion(xMin,xMax,dx,nMax); 

subplot (211) 
plot(xValuesSine4,yValuesSine4); 
xlabel("x"); 
title("Sine Expansion for N = 4"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y

subplot (212) 
plot(xValuesCosine4,yValuesCosine4); 
xlabel("x"); 
title("Cosine Expansion for N = 4"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y


pause(10);


%N = 15 
nMax = 15; 
[xValuesSine15,yValuesSine15] = sineExpansion(xMin,xMax,dx,nMax);
[xValuesCosine15,yValuesCosine15] = cosineExpansion(xMin,xMax,dx,nMax); 

subplot (211) 
plot(xValuesSine15,yValuesSine15); 
xlabel("x"); 
title("Sine Expansion for N = 15"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y

subplot (212) 
plot(xValuesCosine15,yValuesCosine15); 
xlabel("x"); 
title("Cosine Expansion for N = 15"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y

pause(10);


%N = 100 
nMax = 100; 
[xValuesSine100,yValuesSine100] = sineExpansion(xMin,xMax,dx,nMax);
[xValuesCosine100,yValuesCosine100] = cosineExpansion(xMin,xMax,dx,nMax); 

subplot (211) 
plot(xValuesSine100,yValuesSine100); 
xlabel("x"); 
title("Sine Expansion for N = 100"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y

subplot (212) 
plot(xValuesCosine100,yValuesCosine100); 
xlabel("x"); 
title("Cosine Expansion for N = 100"); % places a label to the x axis and a title on top of the plot
grid on; % turns on grid lines at tick marks
axis([-4 4 -1.5 1.5]) % sets the bounds of the plot
ax = gca;                        % gets the current axes
ax.XAxisLocation = 'origin';     % sets them to zero for x
ax.YAxisLocation = 'origin';     % sets them to zero for y
