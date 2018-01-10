#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Entrez le nom des exercices à zipper.'
    exit 0
fi

#MATLAB Mac Path
export PATH=$PATH:/Applications/MATLAB_R2017b.app/bin/
cd $1

find . -type f -name "*.m" -not -path "./bin/*" -exec bash -c 't="./bin/win"; mkdir -p "$t/`dirname {}`"; iconv -f utf-8 -t WINDOWS-1252 "{}" > "$t/{}"' \;

matlab -nodesktop -nosplash -nojvm -r "pcode source; exit"
mkdir -p pcode
mv *.p pcode/
cd enonce
xelatex $1.tex
xelatex $1.tex
cd ..

zip -FS -X -r bin/$1_unix.zip pcode source test enonce/$1.pdf -x "*.DS_Store"

cd bin/win
matlab -nodesktop -nosplash -nojvm -r "pcode source; exit"
mkdir -p pcode
mv *.p pcode/
rm ../$1_win.zip
zip -FS -X -r ../$1_win.zip pcode source test -x "*.DS_Store"
zip -u -X -j ../$1_win.zip ../../enonce/$1.pdf -x "*.DS_Store"