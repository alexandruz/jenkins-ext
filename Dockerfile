FROM openshift/jenkins-2-centos7


USER 0
RUN yum install -y epel-release && \
        sed -i -e '/\[epel\]/,/^\[/s/enabled=0/enabled=1/' /etc/yum.repos.d/epel.repo && \
        yum install -y dpkg alien curl gcc
