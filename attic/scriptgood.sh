#!/bin/sh
randomDevice="/dev/urandom"
getRand(){
#get a random number between 0 and $1
# for 16 digit precision
precision=12;
number=0;
while [ $precision != 0 ]; do
toadd=`od -An -N1 -i "$randomDevice" | bc` 
number=`echo "$number + ($toadd ^ $precision)" | bc`
precision=`echo "$precision - 1" | bc`
done
echo "$number % $1" | bc
}

if [ ! -f "$1" ]; then
echo "Please enter a filename for argument 1."
exit
fi
numoflines=`wc -l < "$1"` #get number of lines
#(255*255)^8= 255^16
requiredProbability=`echo "scale=16; ($numoflines / 12)" | bc` # work out the required probability
#echo "$requiredProbability"
requiredProbability=`echo "scale=0; ($requiredProbability * 10000000000000000) / 1" | bc` #work out required probability

#echo ""
#echo "$numoflines"

total=0
indexes=""
values=""

check(){
	for word in $1; do
		if [ "$word" = "$2" ]; then
			echo "true"
		fi
	done
}

again="no"
while [ `echo "$indexes" | wc -w` -lt 12 ]; do
lineNumber=1;
while IFS="" read -r line; do
	if [ "$line" != " " ]; then
		probability=`getRand "$requiredProbability"`
		#echo "$probability"
		#echo "$probability / 1" | bc
		testProbability=`echo "scale=16; $probability / 10000000000000000" | bc`
		yesorno=`echo "$testProbability < 1" | bc`
		if [ "$yesorno" = "1" ]; then

			#eval array_$total=$multiplier
			#echo "$(array_$total)"
			found=`check "$indexes" "$lineNumber"`
			if [ "$found" != "true" ]; then
				echo "Digit #$lineNumber"
				multiplier=`echo "$(getRand 255)" | bc`

				values="$multiplier $values"
				indexes="$lineNumber $indexes"
				echo "$multiplier"
				total=`echo "$total+1" | bc`
				if [ "$again" = "yes" ] && [ "$total" -eq "12" ]; then
exit
				fi
			fi
			#echo "$line * $multiplier" | bc

		fi

			lineNumber=`echo "$lineNumber + 1" | bc`
	fi
again="yes"
done < "$1"
done