#!/bin/sh
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout myapp.toyproject.com.key -out myapp.toyproject.com.crt -subj "/CN=myapp.toyproject.com/O=toyproject"
kubectl create secret tls tls-secret-toyproject --key myapp.toyproject.com.key --cert myapp.toyproject.com.crt
