function [] = total_deviation(Van, Vbn, Vcn)

total_dev = 0;

i = 1;
while i <= 96
    j = 1;
    while j <= 99
        total_dev = total_dev + (1 - Van(i, j))^2;
        j = j +  1;
    end

    j = 1;
    while j <= 84
        total_dev = total_dev + (1 - Vbn(i, j))^2;
        j = j + 1;
    end

    j = 1;
    while j <= 95
        total_dev = total_dev + (1 - Vcn(i, j))^2;
        j = j + 1;
    end

    i = i + 1;
end

display(total_dev);


end


