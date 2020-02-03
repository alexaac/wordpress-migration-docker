# create and copy file
touch testfile
docker container cp testfile unruffled_snyder:/opt
# show difference
docker diff a8d
# run with different options and args
docker container run -idt -P nginx
docker container run -idt -p 8888:80 nginx
docker container run -idt --name ghost -p 3001:2368 ghost:alpine
# list images
docker images
docker image history ghost:alpine
# pull images
docker pull ubuntu
docker pull centos
# run multiple containers
docker container run -idt --name dev-ubuntu --net host ubuntu bash
docker container run -idt --name dev-centos --net host centos bash
# list multiple containers
docker ps -n 2
# connect to container and install vim
docker exec -it dev-ubuntu bash
ps aux
apt-get update
apt-get install vim
touch /opt/myfile
# stop and start
docker stop dev-ubuntu dev-centos
docker start dev-ubuntu
# connect again and verify vim is installed
docker exec -it dev-ubuntu bash
which vim
# remove
docker rm dev-ubuntu
# create volume
docker volume create portainer_data
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
# commit changes
docker ps -l
docker diff a8d
docker container commit image_name hubuser/reponame:v2
docker image ls
docker image history a8d
docker login
docker image push hubuser/reponame:v2
# checkout, run and push
cd reponame/
git checkout docker
ls
docker image build -t hubuser/reponame:v3 .
docker image ls
docker image history hubuser/reponame:v3
docker container run -idt -P hubuser/reponame:v3
docker ps
docker image push hubuser/reponame:v3