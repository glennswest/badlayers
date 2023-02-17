for ((c=0; c<300; c++))
do
    imagename=`printf "badlayer%03d" $c`
    ./gencontainer.sh
    podman build --layers=true --rm -t $imagename .
done


