FROM ubuntu:16.04
MAINTAINER John H. Robinson, IV <jhriv@ucla.edu>

# Install cron
RUN apt-get update && apt-get install -y cron

# Add files
ADD runme /runme
ADD entrypoint /entrypoint

RUN chmod +x /runme /entrypoint

ENTRYPOINT /entrypoint
