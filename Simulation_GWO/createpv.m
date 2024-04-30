function [] = createpv(DSSText)

DSSText.Command = 'New Load.PV1 Bus1=29.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=-200 kVA=200 kvar=0';
DSSText.Command = 'New Load.PV2 Bus1=35.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=-200 kVA=200 kvar=0';
DSSText.Command = 'New Load.PV3 Bus1=80.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=-200 kVA=200 kvar=0';
DSSText.Command = 'New Load.PV4 Bus1=160.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=-200 kVA=200 kvar=0';
DSSText.Command = 'New Load.PV5 Bus1=300.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=-200 kVA=200 kvar=0';


end

