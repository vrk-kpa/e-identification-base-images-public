# Pull base image
FROM e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-centos7-tomcat-base-image

ADD shibboleth-identity-provider-3.4.6-post-binding.tar.gz /usr/local/src/
RUN ln -sf /usr/local/src/shibboleth-identity-provider-3.4.6 /usr/local/src/shibboleth-identity-provider
COPY jstl-1.2.jar /opt/tomcat/lib/jstl-1.2.jar

