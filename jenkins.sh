yum install java-1.8.0-openjdk -y
yum install maven -y
mvn -v
yum install java-17-amazon-corretto -y
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
update-alternatives --config java
