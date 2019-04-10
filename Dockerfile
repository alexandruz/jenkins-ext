FROM openshift/jenkins-2-centos7


USER 0
RUN yum install -y epel-release &&
        yum-config-manager --enable epel &&
        yum install -y dpkg alien curl
        
