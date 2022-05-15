read -p "Enter Phone Number: " number

if [ ${#number} -lt 5 ];
then
	echo "INVALID"
	exit 99;
fi

department=""
belongs_to=""
respectively_belongs_to=""
sixth=5
eighth=5

for (( i = 0; i < ${#number}; ++i )); do
    digit=${number:$i:1}
    # echo $digit
    
    if [ $i -eq 4 ]
    then
    	echo "5th: " $digit
    	case $digit in
	  1 | 2 | 3)
	    #echo "CSE"
	    department="CSE"
	    ;;
	  4 | 5 | 6)
	    #echo "EEE"
	    department="EEE"
	    ;;
  	  7 | 8 | 9)
	    #echo "TEXTILE"
	    department="TEXTILE"
	    ;;
	  *)
	    #echo "---"
	    ;;
	esac

    fi
    
    if [ $i -eq 8 ]
    then
    	echo "9th: " $digit
    	case $digit in
	  4)
	    #echo "LECTURER"
	    belongs_to="LECTURER"
	    ;;
	  5)
	    #echo "SENIOR LECTURER"
    	    belongs_to="SENIOR LECTURER"
	    ;;
  	  6)
	    #echo "ASSOCIATE PROFESSOR"
    	    belongs_to="ASSOCIATE PROFESSOR"
	    ;;
    	  7)
	    #echo "PROFESSOR"
    	    belongs_to="PROFESSOR"
	    ;;
	  *)
	    #echo "---"
	    ;;
	esac
    fi
    
    if [ $i -eq 5 ]
    then
    	echo "6th: " $digit
    	sixth=$digit
    fi
    
    if [ $i -eq 5 ]
    then
	echo "8th: " $digit
    	eighth=$digit
    fi
done

if [[ $sixth -eq 0 ]] && [[ $eighth -eq 0 ]]
then
	respectively_belongs_to="PROGRAM COORDINATOR"
fi


if [[ $sixth -eq 9 ]] && [[ $eighth -eq 9 ]]
then
	respectively_belongs_to="CHAIR PERSON"
fi

echo "Dept. of ${department}, ${belongs_to} & ${respectively_belongs_to}"


