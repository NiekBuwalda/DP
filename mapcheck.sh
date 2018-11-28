make
numberOfFiles=0
totalTime=0
meanTime=0
FILES=examples/uf20-91/*.cnf
for f in $FILES; do
       ./piSat $f
       if [ $? -eq 20 ]
       then
              echo $f ": " $?
              break
       fi  
done

