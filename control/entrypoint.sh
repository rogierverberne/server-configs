#!/bin/bash
set -e

export ANSIBLE_HOST_KEY_CHECKING=False

mkdir -p ~/.ssh
mkdir -p /root/.ssh
mkdir -p ~/.kube
mkdir -p /root/.kube

cat /credentials/ssh/id_rsa  > ~/.ssh/id_rsa
cat /credentials/ssh/id_rsa  > /root/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa


kubectl completion bash >/etc/bash_completion.d/kubectl
exec "$@"