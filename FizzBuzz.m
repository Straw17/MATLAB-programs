for i = 1:100
    toPrint = "";
    if mod(i,3) == 0
        toPrint = toPrint + "Fizz";
    end
    if mod(i,5) == 0
        toPrint = toPrint + "Buzz";
    end
    if toPrint == ""
        toPrint = string(i);
    end
    fprintf("%s\n", toPrint);
end