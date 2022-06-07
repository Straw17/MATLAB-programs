sum = 0;
count = 0;
while sum < 100
    sum = sum + randi([1,10]);
    count = count + 1;
end
fprintf("It took %d random integers to add up to 100 or more.\n", count);