function [] = plot_P(P)

a = ones(1, 96).*-50;
b = ones(1, 96).*50;

subplot(5,1,1)
plot(P(:,1), 'r', 'LineWidth', 3);
hold on
plot(P(:,2), 'b', 'LineWidth', 3);
hold on
plot(P(:,3), 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([-80 80]);
xlabel('Time')
ylabel('P /Pmax');
legend('Phase A', 'Phase B', 'Phase C');
title('Charging Discharging Profile of Storage 1');



subplot(5,1,2)
plot(P(:,4), 'r', 'LineWidth', 3);
hold on
plot(P(:,5), 'b', 'LineWidth', 3);
hold on
plot(P(:,6), 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([-80 80]);
xlabel('Time')
ylabel('P /Pmax');
legend('Phase A', 'Phase B', 'Phase C');
title('Charging Discharging Profile of Storage 2');


subplot(5,1,3)
plot(P(:,7), 'r', 'LineWidth', 3);
hold on
plot(P(:,8), 'b', 'LineWidth', 3);
hold on
plot(P(:,9), 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([-80 80]);
xlabel('Time')
ylabel('P /Pmax');
legend('Phase A', 'Phase B', 'Phase C');
title('Charging Discharging Profile of Storage 3');


subplot(5,1,4)
plot(P(:,10), 'r', 'LineWidth', 3);
hold on
plot(P(:,11), 'b', 'LineWidth', 3);
hold on
plot(P(:,12), 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([-80 80]);
xlabel('Time')
ylabel('P /Pmax');
legend('Phase A', 'Phase B', 'Phase C');
title('Charging Discharging Profile of Storage 4');

subplot(5,1,5)
plot(P(:,13), 'r', 'LineWidth', 3);
hold on
plot(P(:,14), 'b', 'LineWidth', 3);
hold on
plot(P(:,15), 'm', 'LineWidth', 3);
hold on
plot(a,'--k','LineWidth',1);
hold on
plot(b,'--k','LineWidth',1);
grid on
ylim([-80 80]);
xlabel('Time')
ylabel('P /Pmax');
legend('Phase A', 'Phase B', 'Phase C');
title('Charging Discharging Profile of Storage 5');

end

