#!/bin/sh
randomDevice="/dev/urandom"
getRand(){
#get a random number between 0 and $1
# for 1 byte precision
precision=1;
number=0;
while [ $precision != 0 ]; do
toadd=`od -An -N1 -i "$randomDevice" | bc` 
number=`echo "$number + ($toadd ^ $precision)" | bc`
precision=`echo "$precision - 1" | bc`
done
echo "$number % $1" | bc
}

probabilityOne=`getRand 9` # 10 fingers # 0-9
probabilityOne=`echo "$probabilityOne + 1" | bc`
for noteNumber in `seq 0 $probabilityOne`; do
note=`getRand 87` #88 # 0-87
note=`echo "$note + 1" | bc`
echo "$note"
freq=`echo "scale=16; e((1/12)*l(2))^($note-49)*440" | bc -l`
echo "$freq"
done