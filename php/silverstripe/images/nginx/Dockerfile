FROM nginx:1.9

COPY ./etc/nginx.conf /etc/nginx/nginx.conf
COPY ./etc/conf.d/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
