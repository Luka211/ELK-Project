#!/bin/bash
#Variables
States=(
	'NSW'
	'QLD'
	'VIC'
	'SA'
	'NT'
)

lss=$(ls)


#prints 
for State in ${States[@]};
do
	if [ $State != 'Hawaii' ]
	then
	echo "I'm not fond of Hawaii"
	else
	echo "you failed"
	fi
done

#ls
for ls in ${lss[@]}
do
echo $ls
done

#lists 3 5 and 7
listnum=$(echo {0..9})
for num in ${listnum[@]}
do
if
	 [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
	echo $num
fi
done

