#!/bin/sh


echo Hice@8437chi | sudo -S cp -R /var/lib/docker/volumes/DesktopUIAutomation_vol/_data/BDDDesktopUIAutomation/target/cucumber-json-report.json /home/1972001/
cd /var/jenkins_home/

echo Hice@8437chi | sudo -S rm -rf cucumber-json-report.json

echo Hice@8437chi | sudo -S cp -R /home/1972001/cucumber-json-report.json /var/lib/docker/volumes/taacVolume1/_data/BDDDesktopAutomation/
cd /var/jenkins_home/

#echo Hice@8437chi | sudo chmod 777 *
#echo Hice@8437chi | sudo touch cucumber-json-report.json

