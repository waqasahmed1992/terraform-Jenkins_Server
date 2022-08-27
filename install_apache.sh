#!/bin/bash
            yum install update -y
            wget https://elasticbeanstalk-us-east-1-439620209029.s3.amazonaws.com/jdk-8u281-linux-x64.rpm
            wget https://elasticbeanstalk-us-east-1-439620209029.s3.amazonaws.com/jenkins-2.282-1.1.noarch.rpm
            sudo rpm -ivh jdk-8u281-linux-x64.rpm
            sudo rpm -ivh jenkins-2.282-1.1.noarch.rpm
            sudo systemctl start jenkins
            sudo amazon-linux-extras install nginx1 -y
            sudo systemctl start nginx
            cp /var/lib/jenkins/secrets/initialAdminPassword /var/www/html/index.html
            sudo amazon-linux-extras install java-openjdk11
            chown -R root:root /var/lib/jenkins 
            chown -R root:root /var/cache/jenkins 
            chown -R root:root /var/log/jenkins
            sudo systemctl restart docker.service
            sed -i 's/JENKINS_USER="jenkins"/JENKINS_USER="root"/' /etc/sysconfig/jenkins
            sudo systemctl restart jenkins