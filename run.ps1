docker rm -f ansible-control
docker build .\ansible-client -t ansible-control
docker run -it --name ansible-control --hostname control  -v $pwd/playbooks/:/playbooks -v $pwd/credentials:/credentials ansible-control /bin/bash
