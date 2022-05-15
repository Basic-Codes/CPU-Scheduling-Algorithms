decimal=$1
echo $decimal

#OCTAL=()

temp_decimal=$decimal
for (( i = 0; i < ${#1}; ++i )); do
    # digit=${1:$i:1}
    # echo $digit
    
    quitient=$((temp_decimal/8))
    # echo $quitient
    
    remainder=$((temp_decimal%8))
    # echo $remainder
    
    # OCTAL+=($remainder)
    OCTAL="${remainder}${OCTAL}"
    
    temp_decimal=$quitient
done


echo $OCTAL




