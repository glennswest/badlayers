echo "generating data"
rm -r -f ./data
mkdir ./data
for ((c=0; c<5000; c++))
do
    filename=`printf "layer-%04d.dat" $c`
    #echo $RANDOM | md5sum  > ./data/$filename
    cat /proc/sys/kernel/random/uuid  > ./data/$filename
done

