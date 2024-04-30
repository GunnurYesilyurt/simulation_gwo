function [] = adjustload(ii,DSSCircuit)

mult = [0.4757 0.4473 0.426 0.4189 0.4189 0.426 0.5254 0.6106 0.6745 0.6816 0.6816 0.6745 0.6745 0.6745 0.6603 0.6674 0.7029 0.71 0.71 0.6816 0.6461 0.5893 0.5183 0.4473 0.3969 0.3906 0.378 0.3654 0.3717 0.4095 0.4536 0.5355 0.5985 0.6237 0.63 0.6237 0.5859 0.5796 0.567 0.5544 0.567 0.5796 0.6048 0.6174 0.6048 0.567 0.504 0.441 0.64 0.6 0.58 0.56 0.56 0.58 0.64 0.76 0.87 0.95 0.99 1 0.99 1 1 0.97 0.96 0.96 0.93 0.92 0.92 0.93 0.87 0.72 0.3717 0.3658 0.354 0.3422 0.3481 0.3835 0.4248 0.5015 0.5605 0.5841 0.59 0.5841 0.5487 0.5428 0.531 0.5192 0.531 0.5428 0.5664 0.5782 0.5664 0.531 0.472 0.413];

% derived from Estimating the Distributed Generation Unit Sizing and Its Effects on the Distribution 
%System by Using Machine Learning Methods

i = DSSCircuit.Loads.First;

while i>0
    
    loadName = DSSCircuit.Loads.Name;
    DSSCircuit.Loads.kW = DSSCircuit.Loads.kW *mult(ii);
    i = DSSCircuit.Loads.Next;
end
end

