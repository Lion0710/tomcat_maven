#!/bin/sh
cfile=` find ./target -name '*.war' `
bfile=${cfile##*/}
servicename=${bfile%.*}
echo $servicename
sed -i 's/service/'$servicename'/g' Dockerfile
sed -i 's/service/'$servicename'/g' docker-compose.yml
sed -i 's/service/'$servicename'/g' rancher-compose.yml
docker login 10.31.57.177 -u admin -p admin1234
docker build -t 10.31.57.177/lixiao/$servicename:1.0 .
docker push 10.31.57.177/lixiao/$servicename:1.0

