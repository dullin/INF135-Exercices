assert(estVecEntier([45 22 45], [2 5 7], [3 1 4]) == true)
assert(estVecEntier([45 22 45], [2 5.4 7], [3 1 4]) == false)

assertError(@()estVecEntier([45 22], [2 5 7], [1 4]))