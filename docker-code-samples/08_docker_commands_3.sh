# stop
docker stop a8d
# remove
docker rm a8d
# delete all stopped containers
docker rm $(docker ps -a -q)