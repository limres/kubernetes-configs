FROM nginx:1.9

COPY etc/default.conf /etc/nginx/conf.d/default.conf
COPY scripts/start-nginx.sh /start-nginx.sh
COPY etc/nginx.conf /etc/nginx/nginx.conf

CMD ["/start-nginx.sh"]
