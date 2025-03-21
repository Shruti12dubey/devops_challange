#to run as a web server we need to use this commannetcat command
#( you can use any OS you want)
FROM ubuntu:latest 
WORKDIR /app
COPY simple_service.sh /webapp/
RUN chmod +x simple_service.sh
RUN addgroup -g 1000 simpleuser && \
    adduser -u 1000 -G simpleuser -s /sbin/nologin simpleuser
RUN chown simpleuser:simpleuser simple_service.sh
# Expose the port that the service will listen on use 8080 for http and 8443 for https
EXPOSE 8080
CMD ["nc", "-l", "-p", "8080", "-e", "/app/simple_service.sh"]
