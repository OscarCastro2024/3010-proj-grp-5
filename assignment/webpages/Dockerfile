

FROM ubuntu:24.04 

RUN mkdir -p /workspace

WORKDIR /workspace

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install sudo bash nano net-tools apache2 && \
    useradd -ms /bin/bash webuser1
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y postgresql postgresql-contrib && \
    apt-get clean
RUN    usermod -aG sudo webuser1
RUN    a2enmod cgid
#might allow SSH some day
EXPOSE 5432
#Importing database into the container
COPY phase4_initial_dump.sql /workspace

#just to verify during build
RUN ls -l /tmp 

RUN echo "running docker container grp5-prj4"
ENTRYPOINT /bin/sleep 180
