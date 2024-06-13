#!/bin/bash

echo Installing Jenkins 
ansible-playbook install_jenkins.yml 
echo Installing Docker
ansible-playbook install_docker.yml
echo Installing SonarQube
ansible-playbook install_sonarqube.yml
echo Installing Openshift
ansible-playbook install_openshift.yml
