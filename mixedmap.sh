make
numberOfFiles=0
totalTime=0
meanTime=0

$FILES=examples/aim/_*yes*_.cnf
for f in $FILES; do
       ./piSat $f
       if [ $? -eq 20 ]
       then
              echo $f
       else
              ((numberOfFiles++))
       fi  
done

echo $numberOfFiles
