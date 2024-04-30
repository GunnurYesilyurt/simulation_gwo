function allNodeVmagPu = allnodevmagpu(DSSCircuit)

allNodeVmagPu.A=DSSCircuit.AllNodeVmagPUByPhase(1) ;
allNodeVmagPu.B=DSSCircuit.AllNodeVmagPUByPhase(2) ;
allNodeVmagPu.C=DSSCircuit.AllNodeVmagPUByPhase(3) ;

end