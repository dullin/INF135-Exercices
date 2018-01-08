#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Entrez le nom des exercices à zipper.'
    exit 0
fi

#MATLAB Mac Path
export PATH=$PATH:/Applications/MATLAB_R2017b.app/bin/

cd $1
matlab -nodesktop -nosplash -nojvm -r "pcode src; exit"
mkdir -p pcode
mv *.p pcode/
cd enonce
xelatex $1.tex
xelatex $1.tex
cd ..

zip -FS -X -r bin/$1.zip pcode/*.p source/*.m test/*.m enonce/$1.pdf