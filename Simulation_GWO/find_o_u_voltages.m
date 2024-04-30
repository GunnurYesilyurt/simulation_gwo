function [] = find_o_u_voltages(Van, Vbn, Vcn)

over = 0;
under = 0;

i = 1;
while i <= 96
    j = 1;
    while j <= 99

        if Van(i, j) > 1.05 
            over = over + 1;
        end
        if Van(i, j) < 0.95
            under = under + 1;
        end
        j = j +  1;
    end

    j = 1;
    while j <= 84
        if Vbn(i, j) > 1.05 
            over = over + 1;
        end
        if Vbn(i, j) < 0.95
            under = under + 1;
        end
        j = j + 1;
    end

    j = 1;
    while j <= 95
        if Vcn(i, j) > 1.05 
            over = over + 1;
        end
        if Vcn(i, j) < 0.95
            under = under + 1;
        end
        j = j + 1;
    end

    i = i + 1;
end


display(over);
display(under);

end

