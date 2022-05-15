number=$1

for (( i = 0; i < ${#1}; ++i )); do
    x=$((number/8))
    y=$((number%8))
    result="${y}${result}"
    number=$x
done

echo $result




