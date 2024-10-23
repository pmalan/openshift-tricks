#!/bin/bash
openssl x509 -in servercert.pem -inform pem -notext > fullchain.pem
openssl x509 -in cacert.pem -inform pem -notext >> fullchain.pem

