FROM ubuntu:14.04
RUN apt-get update
RUN mkdir /opt/code
WORKDIR /opt/code
ADD exec.sh /opt/code/exec.sh
RUN chmod 755 exec.sh
CMD ./exec.sh
