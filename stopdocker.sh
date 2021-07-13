#!/bin/sh


echo Hice@8437chi | sudo docker stop buildmgr

echo Hice@8437chi | sudo docker rm buildmgr
echo Hice@8437chi | sudo docker stop mongo-de
echo Hice@8437chi | sudo docker rm mongo-de
echo Hice@8437chi | sudo docker stop Testrunner2
echo Hice@8437chi | sudo docker rm Testrunner2
