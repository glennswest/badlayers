echo "FROM ubi8/ubi-minimal" > Dockerfile
echo "ENTRYPOINT "ECHO "Podman build this container""" >> Dockerfile
echo "" >> Dockerfile
echo "RUN mkdir  /data" >> Dockerfile
for ((c=0; c<100; c++))
do
    filename=`printf "layer-%04d.dat" $c`
    echo "COPY ./data/$filename /data" >> Dockerfile
done


