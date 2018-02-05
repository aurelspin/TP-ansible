FROM ubuntu:14.04
RUN apt-get update && apt-get install -y openssh-server python-apt sudo
RUN useradd -m -s /bin/bash ansible
COPY ansible.pub /home/ansible/.ssh/authorized_keys
RUN chown -R ansible:ansible /home/ansible/.ssh/
RUN echo "ansible ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
RUN echo "ansible:ansible" | sudo chpasswd
RUN mkdir -p /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
