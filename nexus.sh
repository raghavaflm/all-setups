#create amazonlinux ec2 with t2.micro and 30 gb of ebs with port 8081 

sudo yum update -y
sudo yum install wget -y
sudo yum install java-1.8.0-openjdk -y
sudo mkdir /app && cd /app
sudo wget -O nexus.tar.gz https://download.sonatype.com/nexus/3/latest-unix.tar.gz
sudo tar -xvf nexus.tar.gz
sudo mv nexus-3* nexus
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus
sudo chown -R nexus:nexus /app/sonatype-work
sudo echo "run_as_user="nexus"" > /app/nexus/bin/nexus.rc
sudo tee /etc/systemd/system/nexus.service > /dev/null << EOL
[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
User=nexus
Group=nexus
ExecStart=/app/nexus/bin/nexus start
ExecStop=/app/nexus/bin/nexus stop
User=nexus
Restart=on-abort

[Install]
WantedBy=multi-user.target


sudo chkconfig nexus on
sudo systemctl start nexus
sudo systemctl status nexus















updated commands

yum install java-17-amazon-corretto -y
    2  mkdir /app/
    3  cd /app/
    4  sudo wget -O nexus.tar.gz https://download.sonatype.com/nexus/3/latest-unix.tar.gz
    5  ll
    6  tar -zxvf nexus.tar.gz 
    7  ll
    8  sudo mv nexus-3* nexus
    9  ll
   10  sudo adduser nexus
   11  sudo chown -R nexus:nexus /app/nexus
   12  sudo chown -R nexus:nexus /app/sonatype-work
   13  ll
   14  cd nexus/
   15  ll
   16  cd bin/
   17  ll
   18  vim nexus.rc
   19  sudo vim /etc/systemd/system/nexus.service
   20  sudo chkconfig nexus on
   21  sudo systemctl start nexus
   22  sudo systemctl status nexus

