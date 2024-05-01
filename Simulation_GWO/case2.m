function [infoc2] = case2()

Van = zeros(96,99);
Vbn = zeros(96,84);
Vcn = zeros (96,95);
MytotalCircuitLosses= zeros(96, 1);
kVAr = zeros(96, 5);
pvkw = zeros(96, 5);

for ii = 1:96
    DSSObj=startTheEngine();
    DSSText = DSSObj.Text;
    DSSCircuit = DSSObj.ActiveCircuit;
    DSSText.Command = 'Compile (C:\Program Files\OpenDSS\IEEETestCases\123Bus\IEEE123Master.dss)';
    fixTaps(DSSCircuit,5);
    createev(DSSText);
    adjustload(ii, DSSCircuit);
    createpv(DSSText);
    adjustpv(ii, DSSText);

    DSSText.Command = 'solve';

    [Van, Vbn, Vcn] = getbusinfo(DSSCircuit, ii, Van, Vbn, Vcn);

    for i = 1:5
        name = strcat('PV', num2str(i));
        DSSCircuit.Loads.name = name;
        kVAr(ii, i) = DSSCircuit.Loads.kvar;
        pvkw(ii, i) = DSSCircuit.Loads.kw;
    end
    
    MytotalCircuitLosses(ii,1 )= DSSCircuit.Losses(1, 1);

end


disp('Case 2');
find_o_u_voltages(Van, Vbn, Vcn);
total_deviation(Van, Vbn, Vcn);

infoc2.Van = Van;
infoc2.Vbn = Vbn;
infoc2.Vcn = Vcn;
infoc2.DSSCircuit = DSSCircuit;
infoc2.totallosses = MytotalCircuitLosses;
infoc2.kVAr = kVAr;
infoc2.kw = pvkw;






end

