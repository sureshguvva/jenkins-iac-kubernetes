

#!/bin/bash
sudo yum -y update

echo "Install Java JDK 8"
yum remove -y java
yum install -y java-1.8.0-openjdk

echo "Install Maven"
yum install -y maven 

echo "Install git"
yum install -y git

echo "Install Docker engine"
yum update -y
yum install docker -y
#sudo usermod -a -G docker jenkins
#sudo service docker start
sudo chkconfig docker on

# echo "Install Jenkins"
# sudo yum install wget -y
# sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
# sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
# sudo yum install -y jenkins
# sudo usermod -a -G docker jenkins
# sudo chkconfig jenkins on
# sudo service docker start
# sudo service jenkins start

# sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
# sudo yum upgrade
# sudo yum install epel-release java-1.8.0-openjdk
# sudo yum install jenkins
# sudo systemctl daemon-reload
# echo "Start Docker & Jenkins services"
sudo service docker start
# sudo service jenkins start

