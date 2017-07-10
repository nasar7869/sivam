#!/bin/bash



chmod 400 /home/ubuntu/jenkins/tomcattest.pem

ssh -i /home/ubuntu/jenkins/tomcattest.pem ubuntu@34.227.76.107


scp -i /home/ubuntu/jenkins/tomcattest.pem ${WORKSPACE}/*.war ubuntu@34.227.76.107:/var/lib/tomcat7/webapps/

ssh -i /home/ubuntu/jenkins/tomcattest.pem ubuntu@34.227.76.107 sudo service tomcat7 restart

