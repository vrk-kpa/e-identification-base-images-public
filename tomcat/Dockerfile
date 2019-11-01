FROM e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-base-java-service

RUN useradd --create-home -s /bin/bash tomcat

ADD apache-tomcat-9.0.12.tar.gz /tmp/
COPY tomcat-initscript.sh jstl-1.2.jar /tmp/

RUN rm -rf /usr/share/tomcat && \
    mv /tmp/apache-tomcat-9.0.12 /usr/share/tomcat && \
    mv /tmp/tomcat-initscript.sh /etc/init.d/tomcat && \
    mv /tmp/jstl-1.2.jar /usr/share/tomcat/lib/jstl-1.2.jar && \
    chmod 755 /etc/init.d/tomcat && \
    chown tomcat:tomcat /etc/init.d/tomcat && \
    chown -R tomcat:tomcat /usr/share/tomcat

RUN set -x \
    && apt-get update \
    && apt-get -y upgrade \
	&& apt-get install -yq gcc make openssl libssl-dev libapr1 libapr1-dev less \
	&& tar zxf /usr/share/tomcat/bin/tomcat-native.tar.gz -C /tmp \
	&& cd /tmp/tomcat-native*-src/native/ \
	&& ./configure --with-apr=/usr/bin/apr-1-config --with-java-home=/usr/lib/jvm/zulu-8-amd64 --with-ssl=yes --libdir=/usr/lib/ \
	&& make \
	&& make install \
	&& apt-get purge -y gcc make libssl-dev libapr1-dev \
	&& apt-get -y autoremove \
	&& rm -rf /tmp/tomcat-native* \
	&& rm -rf /var/lib/apt/lists/*
