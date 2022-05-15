decimal=$1
echo $decimal

for (( i = 0; i < ${#1}; ++i )); do
    if [ ${1:$i:1} -lt 7 ]; then
        echo "Character $i is smaller than 7"
    fi
done

