#!/bin/bash
docker pull e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-base-centos7-java
docker build --no-cache -f Dockerfile -t e-identification-docker-virtual.vrk-artifactory-01.eden.csc.fi/e-identification-centos7-tomcat-base-image .
