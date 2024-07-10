FROM alpine
RUN apk update && apk upgrade 
RUN apk add nginx openrc nano
COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/http.d/
EXPOSE 9000
CMD ["nginx","-g","daemon off;"]