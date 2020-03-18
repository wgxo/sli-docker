FROM centos:7

RUN yum -y update && \
    yum -y install yum-plugin-ovl && \
    yum -y install git emacs-nox emacs-php-mode emacs-yaml-mode

EXPOSE 80:80

VOLUME /home/slisys
WORKDIR /home/slisys

# Start
CMD ["/usr/sbin/init"]
