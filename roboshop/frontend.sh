#!/bin/bash

source common.sh

PRINT "Installing Nginx\t"
yum install nginx -y
STAT_CHECK $?

PRINT "Download Frontend\t"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
STAT_CHECK $?


PRINT "Remove Old HtDocs\t"
cd /usr/share/nginx/html &>>$LOG && rm -rf *
STAT_CHECK $?

PRINT "Extract Frontend Archive"
unzip /tmp/frontend.zip  && mv frontend-main/* .  && mv static/* .   && rm -rf frontend-master static
STAT_CHECK $?

PRINT "Copy RoboShop Config\t"
mv localhost.conf /etc/nginx/default.d/roboshop.conf
STAT_CHECK $?

PRINT "Update RoboShop Config\t"
sed -i -e '/catalogue/ s/localhost/catalogue.roboshop.internal/' -e '/user/ s/localhost/user.roboshop.internal/'  -e '/cart/ s/localhost/cart.roboshop.internal/' -e '/shipping/ s/localhost/shipping.roboshop.internal/' -e '/payment/ s/localhost/payment.roboshop.internal/' /etc/nginx/default.d/roboshop.conf
STAT_CHECK $?

PRINT "Enabling Nginx\t\t"
systemctl enable nginx
STAT_CHECK $?

PRINT "Starting Nginx\t\t"
systemctl restart nginx
STAT_CHECK $?
