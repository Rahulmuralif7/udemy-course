#!/bin/bash
for i in dog cat hotdog
 do
 echo i is $i
done
for i in `seq 1 5`
 do 
echo i in seq is $i
done
for i in {N..P}
do 
echo i in letter list is $i
done
for d in $(<echoes.sh)
do 
echo d in echoes.sh is $d
done
for f in $(find. -name *.c)
do 
echo names ends in .c are $f
done
