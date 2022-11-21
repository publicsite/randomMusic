#!/bin/sh
randomDevice="/dev/urandom"
getRand(){
#get a random number between 0 and $1
# for 1 byte precision
precision=`echo "scale=0; ($1 % 8) + 1" | bc`;
number=0;
while [ $precision != 0 ]; do
toadd=`od -An -N1 -i "$randomDevice" | bc` 
number=`echo "$number + ($toadd ^ $precision)" | bc`
precision=`echo "$precision - 1" | bc`
done
echo "$number % $1" | bc
}

oldFreq=0

scoreLength=1024
beatsPerBar=4
smallestLength=64

restAndPauseBigNum=`echo "($beatsPerBar^($smallestLength-1))+1" | bc`

smallestLength=`echo "$smallestLength - 1" | bc` # 0-smallestLength
#instruments=`getRand 9` # 10 fingers # 0-9
instruments=0
instruments=`echo "$instruments + 1" | bc`

for instrumentNumber in `seq 0 $instruments`; do
instrumentPositions="$instrumentPositions 0 "
done

for position in `seq 0 $scoreLength`; do
	for instrumentNumber in `seq 1 $instruments`; do
		note=`getRand 75` # 88 - 12
		note=`echo "$note + 1" | bc`
		toAdd=`echo "scale=0; ($note+8)/12" | bc` #first c sharp is 4 notes away from the bottom note and occours every octave
		#echo "$note"
		note=`echo "$note + $toAdd" | bc`
		#echo "$note"
		oldFreq="$freq"
		freq=`echo "scale=16; e((1/12)*l(2))^($note-49)*440" | bc -l`
		###echo "$freq"
		noteLength=`getRand $restAndPauseBigNum` # 0-63 = 64
		noteLength=`echo "scale=20; l($noteLength)/l($beatsPerBar)" | bc -l`
		noteLength=`echo "scale=0; $noteLength" | bc` #floor
		noteLength=`echo "scale=7; ((4/($smallestLength-$noteLength))*333)/60" | bc`
		rest=`getRand $restAndPauseBigNum` # 0-63 = 64
		rest=`echo "scale=20; l($rest)/l($beatsPerBar)" | bc -l`
		rest=`echo "scale=0; $rest" | bc` #floor
		rest=`echo "scale=7; ((4/($smallestLength-$rest))*373.3333333)/60" | bc`


		cutFormat=`echo "$instrumentNumber + 1" | bc`
		instrumentPosition=`echo $instrumentPositions | cut -d " " -f $cutFormat` #print the first occourance

		#output to csound
		echo "i $instrumentNumber $instrumentPosition $noteLength $freq $oldFreq"

		#update array
		#if [ $instrumentNumber -eq 0 ]; then
		#echo "$instrumentPosition"
		#fi
		instrumentPosition=`echo "$instrumentPosition + $rest" | bc`
		if [ `echo "$cutFormat-1" | bc` -ge 1 ]; then
			start=`echo "$cutFormat-1" | bc`
		else
			start=1
		fi

		if [ `echo "$cutFormat+1" | bc` -le $instruments ]; then
			end=`echo "$cutFormat+1" | bc`
		else
			end=$instruments
		fi

		if [ $start -ge 1 ] && [ $end -le $instruments ]; then
			start=`echo "$instrumentPositions" | cut -d " " -f -$start`
			end=`echo "$instrumentPositions" | cut -d " " -f $end-`
			instrumentPositions="${start} ${instrumentPosition} ${end} "
		else
			echo "uhoh"
		fi

		#instrumentPositions="$start$instrumentPosition$end"
		#instrumentNumb
		#position=`echo "$position + 1" | 
		#echo "i $instrumentNumber
	done
done
#echo $instrumentPosition