docker rm -f control
# docker rmi -f control
docker build ./control -t control
docker run -it --rm --name control --hostname control -v $pwd/playbooks/:/playbooks -v $pwd/credentials:/credentials --entrypoint /control/entrypoint.sh control /bin/bash