#!/bin/bash

mkdir -p ${PWD}/sonar_persist/sonarqube_data
mkdir -p ${PWD}/sonar_persist/sonarqube_extensions
mkdir -p ${PWD}/sonar_persist/sonarqube_logs

docker run --name=sonarqube -d -p 9000:9000 \
  -v ${PWD}/sonar_persist/sonarqube_data:/opt/sonarqube/data \
  -v ${PWD}/sonar_persist/sonarqube_extensions:/opt/sonarqube/extensions \
  -v ${PWD}/sonar_persist/sonarqube_logs:/opt/sonarqube/logs \
  sonarqube:9.9.0-community