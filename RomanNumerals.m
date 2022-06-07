numerals = ["I", "V", "X", "L", "C", "D", "M"];
values = [1, 5, 10, 50, 100, 500, 1000];

entry = input("Enter a number in either notation: ", 's');

if isnan(str2double(entry))
    entry = upper(entry);
    getArabic(entry, numerals, values);
else
    entry = str2double(entry);
    getRoman(entry, numerals, values);
end

function sum = getArabic(entry, numerals, values)
    sum = 0;
    lastValue = 0;
    for i=strlength(entry):-1:1
        index = find(numerals==entry(i));
        value = values(index(1));
        if value >= lastValue
            sum = sum + value;
            lastValue = value;
        else
            sum = sum - value;
        end
    end
    fprintf("The Roman numeral %s is equivalent to %d\n",entry,sum);
end

function toPrint = getRoman(entry, numerals, values)
    newEntry = entry;
    toPrint = "";
    currentNumeral = 1;
    while newEntry > 0
        while newEntry > 0 && (currentNumeral == 7 || mod(newEntry, values(currentNumeral+1)) ~= 0)
            if currentNumeral < 6 && mod(newEntry+values(currentNumeral), values(currentNumeral+2)) == 0 && mod(currentNumeral,2) ~= 0
                toPrint = numerals(currentNumeral) + numerals(currentNumeral+2) + toPrint;
                newEntry = newEntry + values(currentNumeral) - values(currentNumeral+2);
            elseif currentNumeral < 7 && mod(newEntry+values(currentNumeral), values(currentNumeral+1)) == 0 && mod(currentNumeral,2) ~= 0
                toPrint = numerals(currentNumeral) + numerals(currentNumeral+1) + toPrint;
                newEntry = newEntry + values(currentNumeral) - values(currentNumeral+1);
            else
                toPrint = numerals(currentNumeral) + toPrint;
                newEntry = newEntry - values(currentNumeral);
            end
        end
        currentNumeral = currentNumeral + 1;
    end
    fprintf("%d is equivalent to the Roman numeral %s\n",entry,toPrint);
end