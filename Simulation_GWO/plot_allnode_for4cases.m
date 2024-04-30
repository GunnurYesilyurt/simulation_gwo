function [] = plot_allnode_for4cases(infoc1,infoc2, infoc3, infoc4)

subplot(4,1,1)
Van = infoc1.Van;
Vbn = infoc1.Vbn;
Vcn = infoc1.Vcn;
casenum = 'case 1';
plot_allnode_voltages(Van, Vbn, Vcn, casenum);

subplot(4,1,2)
Van = infoc2.Van;
Vbn = infoc2.Vbn;
Vcn = infoc2.Vcn;
casenum = 'case 2';
plot_allnode_voltages(Van, Vbn, Vcn, casenum);

subplot(4,1,3)
Van = infoc3.Van;
Vbn = infoc3.Vbn;
Vcn = infoc3.Vcn;
casenum = 'case 3';
plot_allnode_voltages(Van, Vbn, Vcn, casenum);

subplot(4,1,4)
Van = infoc4.Van;
Vbn = infoc4.Vbn;
Vcn = infoc4.Vcn;
casenum = 'case 4';
plot_allnode_voltages(Van, Vbn, Vcn, casenum);




end

