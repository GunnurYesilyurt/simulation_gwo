function [] = createstorage1(DSSText)

%DSSText.Command = 'New XYCurve.Efficiency npts=4 xarray=[.1 .2 .4 1.0] yarray=[.86 .9 .93 .97]';

a= 'New Load.Bt1 phases=1 bus1=29.1 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
%x= '%stored=20 %reserve=20 effcurve=Efficiency model=1';
DSSText.Command = strcat(a);

b='New Load.Bt2 phases=1 bus1=29.2 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(b);

c='New Load.Bt3 phases=1 bus1=29.3 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(c);


d='New Load.Bt4 phases=1 bus1=35.1 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(d);

e='New Load.Bt5 phases=1 bus1=35.2 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(e);

f='New Load.Bt6 phases=1 bus1=35.3 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(f);


g='New Load.Bt7 phases=1 bus1=80.1 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(g);

h='New Load.Bt8 phases=1 bus1=80.2 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(h);

j='New Load.Bt9 phases=1 bus1=80.3 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(j);


k='New Load.Bt10 phases=1 bus1=160.1 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(k);

l='New Load.Bt11 phases=1 bus1=160.2 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(l);

m='New Load.Bt12 phases=1 bus1=160.3 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(m);


n='New Load.Bt13 phases=1 bus1=300.1 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(n);

o='New Load.Bt14 phases=1 bus1=300.2 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(o);

p='New Load.Bt15 phases=1 bus1=300.3 kV=2.4 Conn=wye kW=50 kVA=50 kvar=0';
DSSText.Command = strcat(p);



end

