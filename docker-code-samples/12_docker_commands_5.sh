docker stop $(sudo docker ps -a -q)
docker rm $(sudo docker ps -a -q)
docker volume rm $(sudo docker volume ls -q)
docker network prune
service docker restart