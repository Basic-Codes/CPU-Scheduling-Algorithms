read -p "Enter Phone Number: " number

if [ ${#number} -lt 5 ];
then
	echo "INVALID"
	exit 99;
fi

for (( i = 0; i < ${#number}; ++i )); do
    digit=${number:$i:1}
    # echo $digit
    
    if [ $i -eq 4 ]
    then
    	echo "5th: " $digit
    	case $digit in
	  1 | 2 | 3)
	    echo "SSSSSSSSS"
	    ;;
	  *)
	    echo "WWWWWW"
	    ;;
	esac

    fi
done


