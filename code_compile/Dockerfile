FROM ubuntu:14.04
RUN apt-get update && apt-get install -y vim build-essential
RUN mkdir /opt/code
WORKDIR /opt/code
ADD compile.sh /opt/code/compile.sh
RUN chmod 755 compile.sh
CMD ./compile.sh
