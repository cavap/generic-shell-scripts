#!/bin/bash

echo "Making sure the system is up to date"
apt-get update
apt-get upgrade -y

echo "Installing apache"
apt-get install apache2 -y
apt-get install unzip -y
