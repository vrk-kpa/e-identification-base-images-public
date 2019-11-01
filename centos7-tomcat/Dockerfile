FROM e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-base-centos7-java

RUN groupadd tomcat
RUN useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat

COPY apache-tomcat-9.0.27.tar.gz /tmp/
COPY jstl-1.2.jar /opt/tomcat/lib

RUN tar xvf /tmp/apache-tomcat-9.0.27.tar.gz -C /opt/tomcat --strip-components=1
RUN chgrp -R tomcat /opt/tomcat
RUN chmod -R g+r /opt/tomcat/conf
RUN chmod g+x /opt/tomcat/conf
RUN chown -R tomcat /opt/tomcat/webapps/ \
                    /opt/tomcat/work/ \
                    /opt/tomcat/temp/ \
                    /opt/tomcat/logs/

RUN set -x \
    && yum -y update \
	&& yum -y install gcc make openssl-devel apr-devel less \
	&& tar zxf /opt/tomcat/bin/tomcat-native.tar.gz -C /tmp \
	&& cd /tmp/tomcat-native*-src/native/ \
	&& ./configure --with-apr=/usr/bin/apr-1-config --with-java-home=/usr/lib/jvm/zulu-8 --with-ssl=yes --libdir=/usr/lib/ \
	&& make \
	&& make install \
	&& rm -rf /tmp/tomcat-native*
