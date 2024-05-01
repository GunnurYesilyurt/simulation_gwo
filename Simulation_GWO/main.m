clc;
clear;

infoc1 = case1(); %base case
infoc2 = case2(); %with pv
infoc3 = case3();  %wiht storage, operation management using single phase GWO
%infoc3_1 = case3_1(infoc3.P);  %optimum allocation and sizing of storage using multi objective GWO

%Van = infoc3.Van;
%Vbn = infoc3.Vbn;
%Vcn = infoc3.Vcn;
%casenum = 'case 3';
%plot_allnode_voltages(Van, Vbn, Vcn, casenum);

%plot_allnode_for4cases(infoc1, infoc2, infoc3, infoc4);

%plotVUF(infoc1, infoc2, infoc3, infoc4);

%plot_SoC(infoc3.SoC);

plot_P(infoc3.P);

%Plot_kVAr(infoc2.kw, infoc2.kVAr, infoc3.kVAr, infoc4.kVAr);

%export_to_excel(infoc1, infoc2, infoc3, infoc4);

