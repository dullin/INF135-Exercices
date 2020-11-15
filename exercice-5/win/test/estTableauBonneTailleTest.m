assert(estTableauBonneTaille(4, [4 2 5 1]) == true)
assert(estTableauBonneTaille(8, [2 5]) == false)

assertError(@()estTableauBonneTaille(-3, [3 5]))
