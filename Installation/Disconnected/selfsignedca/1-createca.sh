#!/bin/bash
openssl req -x509 -config openssl-ca-org.cnf -days 365 -newkey rsa:4096 -sha256 -nodes -out cacert.pem -outform PEM

