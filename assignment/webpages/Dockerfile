

FROM ubuntu:24.04
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

RUN echo "running docker container grp5-prj4"
ENTRYPOINT /bin/sleep 180
