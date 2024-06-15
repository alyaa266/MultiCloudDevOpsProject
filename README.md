# MultiCloudDevOpsProject


This repository contains the infrastructure provisioning, configuration management, containerization, CI/CD pipeline setup, monitoring, logging, and AWS integration for deploying an application using Terraform, Ansible, Docker, and Jenkins.

## Table of Contents

1. [Infrastructure Provisioning with Terraform](#infrastructure-provisioning-with-terraform)
2. [Configuration Management with Ansible](#configuration-management-with-ansible)
3. [Containerization with Docker](#containerization-with-docker)
4. [Continuous Integration with Jenkins](#continuous-integration-with-jenkins)
5. [Automated Deployment Pipeline](#automated-deployment-pipeline)
6. [Monitoring and Logging](#monitoring-and-logging)
7. [AWS Integration](#aws-integration)

## First Is Terraform !

### We should always provision our resources as a first step of any project and we do that by using terraform, I have used modules and variables to make the scripts as clean and reuseable as possible ! 
![ad052c63-fc2e-4394-939a-ff2a00945c76](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/1d0475df-4f01-44d0-8ce3-f68e7bf95e6e)
![91fe62bb-b0f6-4a43-ba50-18772f077424](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/45548503-d547-4142-8200-9eaa6614996a)
![559e1370-f34f-4c66-b0fe-e754e5f4962c](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/04a9ce21-030a-461e-8b6e-b20b831499b1)
![6266aa35-a634-4e7d-af24-b072a9638988](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/0871cfaa-c176-4bb3-a6c6-80fdc21660b1)

### and after the first apply remote backend
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/a8750da1-ecf1-4524-8791-f68e6d7e94c5)
![0a0af3ff-3f59-48e6-b95a-cc3ed25e795b](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/08682887-9a6b-4f4f-a2d0-14e5d5590274)
![33c1f9da-7c84-477a-b4e9-0edcf366fa5d](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/1bdabeaf-f869-4ddb-b4de-78863bde92aa)

### We check our mointoring Module
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/25f297aa-a043-4ae1-aa44-cacf070712ab)
![4c052425-9cf8-4961-8c72-afd54e3fa794](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/9f7d788c-cc91-40d3-a94c-f7342bd095d5)
![3500fab0-47e0-4cf6-bd68-e493f29ab69d](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/5ffde22e-8d6b-4983-890f-5b1dcd700c4b)

## Next stop is Ansible ! 
### after provisioning resources we need to configure them ,and that's why we need Ansible ! 
### we need to install the plugin called aws_ec2 which helps in in creating Dynamic inventory for EC2 instances 
# (inventory)
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/783aa6a6-47e5-4a40-92a3-1e206ecfeea6)
# (ansible.cfg) 
### "note we're using the same key we used with EC2"
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/f1b3850a-fed9-46e7-a6bf-5bed9cd73f59)

### Next we use Ansible roles to configura each of our tools ! 
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/9cdcd5dd-6c8e-4c9b-a25b-f69bf7220b06)

### We run the playbook and wait for the confirmation that all tasks were made !
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/3869b741-58c5-478d-be05-5ff9597a9087)

![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/2b46b1bb-a9dc-4007-9d99-fa75a5a8108d)
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/8e850632-d6c3-42b5-b6b0-3ab175689a44)
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/f39c0308-8e4f-4061-a66f-a6c4e9a3b33e)
![image](https://github.com/alyaa266/MultiCloudDevOpsProject/assets/84872262/7347ce27-d925-4d41-8d36-54b2b93d8e4a)









