#!/bin/bash
apt update -y
apt install -y nginx git
rm -rf /var/www/html/*
git clone https://github.com/ravi2krishna/food.git /var/www/html/
