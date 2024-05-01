function [] = plot_SoC(SoC)

a = ones(1, 96)*80;
b = ones(1, 96)*20;
c = 20;

subplot(5,1,1)
plot(SoC(:,1)./c, 'r', 'LineWidth', 3);
hold on
plot(SoC(:,2)./c, 'b', 'LineWidth', 3);
hold on
plot(SoC(:,3)./c, 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([0 100]);
xlabel('Time')
ylabel('SoC (%)');
legend('Phase A', 'Phase B', 'Phase C');
title('SoC of Storage 1');


subplot(5,1,2)
plot(SoC(:,4)./c, 'r', 'LineWidth', 3);
hold on
plot(SoC(:,5)./c, 'b', 'LineWidth', 3);
hold on
plot(SoC(:,6)./c, 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([0 100]);
xlabel('Time')
ylabel('SoC (%)');
legend('Phase A', 'Phase B', 'Phase C');
title('SoC of Storage 2');


subplot(5,1,3)
plot(SoC(:,7)./c, 'r', 'LineWidth', 3);
hold on
plot(SoC(:,8)./c, 'b', 'LineWidth', 3);
hold on
plot(SoC(:,9)./c, 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([0 100]);
xlabel('Time')
ylabel('SoC (%)');
legend('Phase A', 'Phase B', 'Phase C');
title('SoC of Storage 3');


subplot(5,1,4)
plot(SoC(:,10)./c, 'r', 'LineWidth', 3);
hold on
plot(SoC(:,11)./c, 'b', 'LineWidth', 3);
hold on
plot(SoC(:,12)./c, 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([0 100]);
xlabel('Time')
ylabel('SoC (%)');
legend('Phase A', 'Phase B', 'Phase C');
title('SoC of Storage 4');

subplot(5,1,5)
plot(SoC(:,13)./c, 'r', 'LineWidth', 3);
hold on
plot(SoC(:,14)./c, 'b', 'LineWidth', 3);
hold on
plot(SoC(:,15)./c, 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([0 100]);
xlabel('Time')
ylabel('SoC (%)');
legend('Phase A', 'Phase B', 'Phase C');
title('SoC of Storage 5');


end

