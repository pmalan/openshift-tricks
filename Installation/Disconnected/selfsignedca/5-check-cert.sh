#!/bin/bash
openssl verify -CAfile cacert.pem servercert.pem
