FROM nginx:1.11

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/conf.d/registry.conf /etc/nginx/conf.d/registry.conf
COPY ./scripts/nginx-config.sh /usr/local/scripts/nginx-config.sh

CMD /usr/local/scripts/nginx-config.sh && \
    /usr/sbin/nginx -g "daemon off;"
