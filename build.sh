for ((c=0; c<100; c++))
do
    imagename=`printf "badlayer%03d" $c`
    ./gencontainer.sh
    podman build --layers=true --rm -t $imagename .
done


