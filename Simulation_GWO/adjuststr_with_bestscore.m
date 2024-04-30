function SoC = adjuststr_with_bestscore(SoC, storage, DSSText, ii)

i = 1;
while i <= size(storage, 2)
    
   a = num2str(i);
   b = storage(1, i);
   b = num2str(b);

   DSSText.Command = strcat('Load.Bt',a,'.kW=',b);

   
   SoC(ii+1, i) = SoC(ii, i) + storage(1, i);  %for example 262.5kWh = 250kWh + 50W*0.25h;


   i = i + 1;
end





end

