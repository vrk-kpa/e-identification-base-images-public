# Pull base image
FROM ubuntu:16.04

######
# Install tools
######

# Install common tools
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install python-software-properties software-properties-common sudo && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
  apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main' && \
  apt-get update && \
  apt-get -y install zulu-8 && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

# enable unlimited JCE policy
RUN sed --in-place "s/#crypto.policy=unlimited/crypto.policy=unlimited/g" /usr/lib/jvm/zulu-8-amd64/jre/lib/security/java.security

# Define JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/zulu-8-amd64
ENV PATH="/usr/lib/jvm/zulu-8-amd64/bin:${PATH}"
