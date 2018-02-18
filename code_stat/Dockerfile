FROM ubuntu:14.04
RUN apt-get update && apt-get install -y gitstats apache2
RUN mkdir /opt/code/
WORKDIR /opt/code
ADD stat.sh /opt/code/stat.sh
RUN chmod 755 stat.sh
CMD ./stat.sh

