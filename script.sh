make
numberOfFiles=0
totalTime=0
meanTime=0
FILES=examples/tests/*.cnf
for f in $FILES; do
  START=$(date +%s%N)
  time ./piSat $f
  END=$(date +%s%N)
  ((myTime=END-START | bc))
  ((totalTime=totalTime+myTime | bc))
  ((numberOfFiles++))
done

((meanTime=totalTime/numberOfFiles))
echo "total Time = "$totalTime
echo "number of Files = "$numberOfFiles
echo "mean Time = "$meanTime
