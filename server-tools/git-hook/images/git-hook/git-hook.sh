#!/bin/sh
chmod 600 /root/.ssh/id_rsa
chmod 644 /root/.ssh/id_rsa.pub
chmod 644 /root/.ssh/known_hosts

/usr/local/scripts/git-clone.sh

docker-hook -t $GIT_HOOK_TOKEN -c /usr/local/scripts/git-pull.sh
