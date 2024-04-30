clc;
clear;

%infoc1 = case1(); %base case
%infoc2 = case2(); %with pv
infoc3 = case3();  %wiht storage, operation management using single phase GWO
%infoc4 = case4();  %optimum allocation and sizing of storage using multi objective GWO

%Van = infoc2.Van;
%Vbn = infoc2.Vbn;
%Vcn = infoc2.Vcn;
%casenum = 'case 2';
%plot_allnode_voltages(Van, Vbn, Vcn, casenum);

%plot_allnode_for4cases(infoc1, infoc2, infoc3, infoc4);

%plotVUF(infoc1, infoc2, infoc3, infoc4);

plot_SoC(infoc3.SoC);

%Plot_kVAr(infoc2.kw, infoc2.kVAr, infoc3.kVAr, infoc4.kVAr);

%export_to_excel(infoc1, infoc2, infoc3, infoc4);

