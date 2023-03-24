for ((c=0; c<300; c++))
do
    imagename=`printf "badlayer%03d" $c`
    podman rmi --force $imagename 
done


