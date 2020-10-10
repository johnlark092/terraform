#!/bin/bash
apt-get update -y
apt-get install -y apache2 git
cd /var/www/html
rm index.html -f
git init 
git pull https://github.com/roitraining/space-invaders.git
