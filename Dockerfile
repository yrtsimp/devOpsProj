FROM centos:latest
RUN yum install -y openssh-server
RUN mkdir /var/run/sshd
RUN useradd -c "Student User" -m student
RUN echo "student:student" | chpasswd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N ""
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
