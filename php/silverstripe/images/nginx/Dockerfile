FROM nginx:1.9

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/conf.d/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
