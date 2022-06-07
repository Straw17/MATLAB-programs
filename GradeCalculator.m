pointTotal = 0;
pointMaxTotal = 0;

while true
    fprintf('Options:\n');
    fprintf('1. Add quiz\n');
    fprintf('2. Add test\n');
    fprintf('3. Add project\n');
    fprintf('4. Finish input\n');
    
    selection = 0;
    while (selection ~= 1) && (selection ~= 2) && (selection ~= 3) && (selection ~= 4)
        selection = input('Enter selection: ');
    end

    endInput = false;
    switch selection
        case 1
            pointTotal = pointTotal + getPoints(20);
            pointMaxTotal = pointMaxTotal + 20;
        case 2
            pointTotal = pointTotal + getPoints(50);
            pointMaxTotal = pointMaxTotal + 50;
        case 3
            pointTotal = pointTotal + getPoints(100);
            pointMaxTotal = pointMaxTotal + 100;
        case 4
            endInput = true;
    end
    if endInput
        break;
    end
end

grade = pointTotal / pointMaxTotal;
percent = grade * 100;

if grade >= 0.9
    letter = 'A';
elseif grade >= 0.8
    letter = 'B';
elseif grade >= 0.7
    letter = 'C';
elseif grade >= 0.6
    letter = 'D';
else
    letter = 'F';
end

fprintf('Your grade is: %s (%.2f%%)\n',letter,percent);

function points = getPoints(maximum)
    points = -1;
    while ~(points >= 0 && points <= maximum)
        fprintf('Enter points out of %d: ', maximum)
        points = input('');
    end
end