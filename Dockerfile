FROM alpine 
RUN apk add nginx
COPY nginx-server.conf /etc/nginx/http.d/default.conf
COPY startup.sh /tmp
COPY code /usr/share/nginx/html
RUN chmod +x /tmp/startup.sh
ENTRYPOINT ["/tmp/startup.sh"]
