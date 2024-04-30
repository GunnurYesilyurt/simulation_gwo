function [] = adjustpv(ii, DSSText)


pvirrad = ...
[0 0 0 0 0 0 0 0 0.064 0.219 0.369 0.512 0.598 0.582 0.509 0.411 0.25 0.041 0 0 0 0 0 0 ...
0 0 0 0 0 0 0.006 0.127 0.285 0.435 0.612 0.638 0.67 0.653 0.633 0.61 0.411 0.21 0.062 0 0 0 0 0 ...
0 0 0 0 0 0 0.014 0.127 0.327 0.503 0.632 0.715 0.752 0.747 0.7 0.607 0.469 0.29 0.1 0.007 0 0 0 0 ...
0 0 0 0 0 0 0 0 0.073 0.11 0.162 0.399 0.486 0.516 0.53 0.51 0.338 0.072 0 0 0 0 0 0];



%derived from Long-term patterns of European PV output using 30 years of validated hourly reanalysis and satellite data

irrad = -200*pvirrad(ii);
a = num2str(irrad);

DSSText.Command= strcat('Load.PV1.kW=',a);

DSSText.Command= strcat('Load.PV2.kW=',a);

DSSText.Command= strcat('Load.PV3.kW=',a);

DSSText.Command= strcat('Load.PV4.kW=',a);

DSSText.Command= strcat('Load.PV5.kW=',a);



end

