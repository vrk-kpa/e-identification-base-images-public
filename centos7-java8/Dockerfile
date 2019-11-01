FROM centos:7.4.1708

# install Java
RUN curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo && \
    rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems && \
    yum -y update && \
    yum -y install zulu-8 && \
    yum clean all

# enable unlimited JCE policy
RUN sed --in-place "s/#crypto.policy=unlimited/crypto.policy=unlimited/g" /usr/lib/jvm/zulu-8/jre/lib/security/java.security

ENV JAVA_HOME /usr/lib/jvm/zulu-8
ENV JRE_HOME /usr/lib/jvm/zulu-8/jre
