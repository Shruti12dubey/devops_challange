#to run as a web server we need to use this commannetcat command
#( you can use any OS you want)
FROM ubuntu:latest 
WORKDIR /app
ENTRYPOINT echo "Hello Fis"
