% By: Ella, Will, and Josh
% 1/29/20

%% A.4.b

%I think I fixed this

I = linspace(0, 0.15, 50);
R1 = -97.656;
V1 = R1*I + 12;
R2 = -181.727;
V2 = R2*I + 12;

figure(1)
xlim([0 0.12])
ylim([0 15])

plot(I, V1);
hold on
plot(I, V2);
xline(0.1, '-.g');
yline(12, '-.b');


legend('R_1 load', 'R_2 load', 'I_{limit} = 0.1A', 'V_{limit} = 12V');

title('Load Lines');
xlabel('Current (A)');
ylabel('Voltage (V)');

%% A.5.b
    % Matlab Portion of data analysis
    
 T = readtable('freq_Sweep.xlsx','Range','B1:D21')
 
 freq = table2array(T(:,'Frequency_Hz_'));
 vin = table2array(T(:,'Vin_V_'));
 vout = table2array(T(:,'Vout_V_'));
 
 
 plot(freq, vin,'-o')
 hold on
 
 plot(freq,vout,'-xr')
 
 xlabel('Frequency (Hz)')
 ylabel('Voltage (V)')
 title('Vin and Vout vs. Frequency - Linear Scale')
 hold off
 
 A_lp = vout ./ vin;
 
 figure
 loglog(freq, A_lp)
 xlabel('Frequency (Hz)')
 ylabel('Gain |Vin| / |Vout| (%)')
 title('Gain vs. Frequency - Logarithmic Scale')
 
 
