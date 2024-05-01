function infoc3 = case3()

Van = zeros(96,99);
Vbn = zeros(96,84);
Vcn = zeros (96,95);
MytotalCircuitLosses= zeros(96, 1);
P = zeros(96, 15); %charging and discharging power of storages
SoC = zeros(96, 15);
SoC(1, :) = 1000;

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
    createstorage1(DSSText);

    [SoC, P(ii, :)] = GWOmain(SoC, DSSCircuit, DSSText, ii);

    DSSText.Command = 'solve';
   

    [Van, Vbn, Vcn] = getbusinfo(DSSCircuit, ii, Van, Vbn, Vcn);
    MytotalCircuitLosses(ii,1 )= DSSCircuit.Losses(1, 1);
    disp(ii);

end


disp('Case 3');
find_o_u_voltages(Van, Vbn, Vcn);
total_deviation(Van, Vbn, Vcn);

infoc3.Van = Van;
infoc3.Vbn = Vbn;
infoc3.Vcn = Vcn;
infoc3.DSSCircuit = DSSCircuit;
infoc3.totallosses = MytotalCircuitLosses;
infoc3.SoC = SoC;
infoc3.P = P;
















end

