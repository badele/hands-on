FROM openjdk:8

# Installation packages
RUN apt update
RUN apt install git curl curl -y

# Install programm requirements
#ADD warp10-1.2.15 /opt/warp10-1.2.15
ADD Caddyfile /Caddyfile
RUN curl https://getcaddy.com | bash -s personal http.cors

# Add hands-on files
WORKDIR /
RUN mkdir /hands-on
ADD quantum /hands-on/quantum
ADD assets /hands-on/assets
ADD quantum /hands-on/quantum
ADD templates /hands-on/templates
ADD README.md /hands-on/README.md

# Add step files
ADD step-* /hands-on/

ADD start.sh /start.sh

ENTRYPOINT [ "/start.sh" ]