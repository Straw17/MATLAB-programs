a = 0; b = 1; n = 1;

error = inf;
ratio = (1 + 5.^0.5)/2;
while error > 0.0001
    n = n + 1;
    c = a + b;
    error = abs((c/b) - ratio)/ratio;
    a = b; b = c;
end

fprintf("It took %d terms to reach a percent error less than 0.01%%.\n", n);