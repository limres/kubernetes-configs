FROM python:2.7

RUN pip install requests

COPY ./.secrets/deploy_key /root/.ssh/id_rsa
COPY ./.secrets/deploy_key.pub /root/.ssh/id_rsa.pub
COPY ./.secrets/github_key /root/.ssh/known_hosts

COPY ./docker-hook.py /usr/local/bin/docker-hook
COPY ./git-clone.sh /usr/local/scripts/git-clone.sh
COPY ./git-hook.sh /usr/local/scripts/git-hook.sh
COPY ./git-pull.sh /usr/local/scripts/git-pull.sh

CMD /usr/local/scripts/git-hook.sh
