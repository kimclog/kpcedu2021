FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install apache2 -y
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
