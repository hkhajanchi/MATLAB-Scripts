%Problem 3A
%The ideal diode will rectify the sinusoidal signal 

time = linspace(0,10,100);
original_signal = 5*sin(2*pi*50*time); 
subplot(211)
plot(original_signal);
title ('Original Signal');
xlabel ('Time (s)'); 
ylabel ('Voltage (V)'); 
for t = 1:100
    
    if 5*sin(2*pi*50*time(t)) <= 0
        original_signal(t) = 0; 
    else
        original_signal(t) = 5*sin(2*pi*50*time(t));  
    end 
    
end 

subplot(212);
plot(original_signal); 
title ('Rectified Signal');
xlabel ('Time (s)'); 
ylabel ('Voltage (V)'); 