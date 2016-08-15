FROM python:2.7

RUN pip install requests

COPY ./docker-hook.py /usr/local/bin/docker-hook
COPY ./script.sh /usr/local/scripts/script.sh

CMD docker-hook -t $DOCKER_HOOK_TOKEN -c /usr/local/scripts/script.sh
