function [] = createev(DSSText)

DSSText.Command = 'New Load.EV1 Bus1=13.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=200 kVA=200 kvar=0';
DSSText.Command = 'New Load.EV2 Bus1=51.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=200 kVA=200 kvar=0';
DSSText.Command = 'New Load.EV3 Bus1=60.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=200 kVA=200 kvar=0';
DSSText.Command = 'New Load.EV4 Bus1=76.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=200 kVA=200 kvar=0';
DSSText.Command = 'New Load.EV5 Bus1=98.1.2.3 Phases=3 Conn = wye Model=1 kV=2.4 kW=200 kVA=200 kvar=0';




end

