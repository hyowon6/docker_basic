FROM ubuntu:22.04

RUN apt -y update && apt -y upgrade \
    && apt -y upgrade \
    && apt -y install nginx \
    && apt clean

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
