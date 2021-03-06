# DevOps Engineer Challenge
### Firstly, I examined the project and created its architecture.
![Optional Text](https://github.com/Talhaasan/go-services/blob/main/projectContent/images/project_architecture.png)
### Secondly, I created Producer and Consumer services with Go. Then, I created a Docker image of the services using Dockerfile and published this image on Docker Hub. Furthermore, I connected and published messages with RabbitMQ in these services.
![Optional Text](https://github.com/Talhaasan/go-services/blob/main/projectContent/images/dockerhub.png)
![Optional Text](https://github.com/Talhaasan/go-services/blob/main/projectContent/images/rabbitmq.png)
### Thirdly, I created the Jenkins job and set the credentials to be able to connect to AWS. Then, I set up the Terraform connection with main.tf file to create AWS EC2 instance in the Jenkins pipeline.
### Finally, I built the Jenkins pipeline and connected to the EC2 instance created on AWS and installed the necessary environments on the machine (helm, docker, kubernetes, go etc.)
![Optional Text](https://github.com/Talhaasan/go-services/blob/main/projectContent/images/jenkins-pipeline.png)
![Optional Text](https://github.com/Talhaasan/go-services/blob/main/projectContent/images/ec2instance.png)
