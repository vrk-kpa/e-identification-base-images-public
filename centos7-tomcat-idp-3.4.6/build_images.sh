#!/bin/bash
./build_shibboleth_tar.sh
docker pull e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-centos7-tomcat-base-image
docker build --no-cache -f Dockerfile -t e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-centos7-tomcat-idp-3.4.6-base-image .
rm shibboleth-identity-provider-3.4.6-post-binding.tar.gz
