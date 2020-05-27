FROM debian:stable
LABEL description="Debian-based python container for CSAF development work"

# keeps down noise by telling apt that this shell is not interactive
ARG DEBIAN_FRONTEND="noninteractive"

# update packages
#RUN apt-get update -q && apt-get upgrade -y --no-install-recommends -q

# install all necessary software components
RUN apt-get update -q \
 && apt-get install -y --no-install-recommends -qq \
    python3

RUN mkdir /docker

#COPY docker/* /docker/
#COPY csaf_json_schema.json /docker
#COPY cvrf-rhba-2018-0489-modified.json /docker
#COPY CVE-2018-0171-modified.json /docker

COPY entrypoint.sh /docker/entrypoint.sh

ENTRYPOINT ["/docker/entrypoint.sh"]

