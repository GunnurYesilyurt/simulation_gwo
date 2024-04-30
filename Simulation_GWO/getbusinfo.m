function [Van, Vbn, Vcn] = getbusinfo(DSSCircuit, ii, Van, Vbn, Vcn)

allNodeVmag = allnodevmagpu(DSSCircuit);
Van(ii,:) = allNodeVmag.A;
Vbn(ii,:) = allNodeVmag.B;
Vcn(ii,:) = allNodeVmag.C;

end

