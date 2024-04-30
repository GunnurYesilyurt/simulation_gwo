function fitness = fobj1(wolf_position, DSSCircuit, DSSText, dim, lb, ub)


for count = 1:dim   
    b = wolf_position(1, count);
    b = num2str(b);
    DSSText.Command = strcat('Load.Bt',num2str(count),'.kW=',b);
end

DSSText.Command = 'solve';

Van = zeros(1, 99);
Vbn = zeros(1, 84);
Vcn = zeros(1, 95);
[Van, Vbn, Vcn] = getbusinfo(DSSCircuit, 1, Van, Vbn, Vcn);


%total voltage deviation at time ii:
total_dev = 0;
j = 1;
while j <= 99
    total_dev = total_dev + (1 - Van(1, j))^2;
    j = j +  1;
end
j = 1;
while j <= 84
    total_dev = total_dev + (1 - Vbn(1, j))^2;
    j = j + 1;
end
j = 1;
while j <= 95
    total_dev = total_dev + (1 - Vcn(1, j))^2;
    j = j + 1;
end

fitness = total_dev;








end

