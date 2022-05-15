decimal=$1
echo $decimal

OCTAL=()

temp_decimal=$decimal
for (( i = 0; i < ${#1}; ++i )); do
    # digit=${1:$i:1}
    # echo $digit
    
    quitient=$((decimal/8))
    echo $quitient
    
    remainder=$((decimal%8))
    echo $remainder
    
    # OCTAL+=($id)
done



