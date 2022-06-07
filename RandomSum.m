sum = 0;
count = 0;

while sum < 100
    sum = sum + randi([1,10]);
    count = count + 1;
end

fprintf("%d numbers needed to reach 100\n", count);
fprintf("Final sum of %d\n", sum);