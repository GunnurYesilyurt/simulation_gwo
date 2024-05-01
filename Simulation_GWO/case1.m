function [infoc1] = case1()

Van = zeros(96,99);
Vbn = zeros(96,84);
Vcn = zeros (96,95);
MytotalCircuitLosses= zeros(96, 1);

for ii = 1:96 % 24*4
    DSSObj=startTheEngine();
    DSSText = DSSObj.Text;
    DSSCircuit = DSSObj.ActiveCircuit;
    DSSText.Command = 'Compile (C:\Program Files\OpenDSS\IEEETestCases\123Bus\IEEE123Master.dss)';
    fixTaps(DSSCircuit,5);
    createev(DSSText);
    adjustload(ii, DSSCircuit);
    
    DSSText.Command = 'solve';

    [Van, Vbn, Vcn] = getbusinfo(DSSCircuit, ii, Van, Vbn, Vcn);

    MytotalCircuitLosses(ii,1 )= DSSCircuit.Losses(1, 1);

end


%DSSText.Command = 'Show Losses';

disp('Case 1');
find_o_u_voltages(Van, Vbn, Vcn);
total_deviation(Van, Vbn, Vcn);
infoc1.Van = Van;
infoc1.Vbn = Vbn;
infoc1.Vcn = Vcn;
infoc1.DSSCircuit = DSSCircuit;
infoc1.totallosses = MytotalCircuitLosses;



end

