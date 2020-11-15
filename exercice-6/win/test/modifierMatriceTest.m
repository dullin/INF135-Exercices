mat = eye(5);
assert(isequal(modifierMatrice(mat, [1 1; 4 5; 3 4], 100), ...
    [100     0     0     0     0
       0     1     0     0     0
       0     0     1   100     0
       0     0     0     1   100
       0     0     0     0     1]))
