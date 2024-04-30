function [] = plot_allnode_voltages(Van, Vbn, Vcn, casenum)


pu_uplimit = ones(1,96)*1.05;
pu_lowlimit = ones(1,96)*0.95;

i = 1;
while i < 96
   
    plot(Vcn(:,i), 'm');
    hold on
    i = i + 1;
end   

i = 1;
while i < 85
   
    plot(Vbn(:,i), 'b');
    hold on
    i = i + 1;
end

i = 1;
while i < 100
    
    plot(Van(:,i), 'r');
    hold on
    i = i + 1;
end

xlabel('Time')
ylabel('Voltage (p.u.)');

grid on
hold on
plot(pu_lowlimit,'--k','LineWidth',3);
hold on
plot(pu_uplimit,'--k','LineWidth',3);
grid on
ylim([0.9 1.1]);
%legend('Phase C', 'Phase B', 'Phase A');
title (casenum);







end

