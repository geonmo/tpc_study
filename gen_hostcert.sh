#!/bin/bash
openssl req -newkey rsa:2048 -nodes -keyout hostkey.pem -out hostcert.csr -subj "/C=KR/O=KISTI/O=GSDC/CN=$HOSTNAME"
openssl x509 -signkey hostkey.pem -in hostcert.csr -req -days 365 -out hostcert.pem 
sudo cp host*.pem /etc/grid-security
sudo update-ca-trust extract


