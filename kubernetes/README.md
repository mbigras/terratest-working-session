# hello-terraftest/kubernetes

> Deploy the hello-world-app to Kubernetes and expose it via a LoadBalancer.

## Overview

Welcome! This directory contains the Kubernetes configuration to deploy a small python web application.
To build and run this application using only Docker use the `../app` directory.
For a terratest example us the `../test` directory.

This tutorial was adapted from the Gruntwork [infrastructure-as-code-testing-talk](https://github.com/gruntwork-io/infrastructure-as-code-testing-talk) repository and [Automated Testing for Terraform, Docker, Packer, Kubernetes, and More
](https://youtu.be/xhHOW0EF5u8) presentation. Credit and license information is in LICENSE.txt

## Quickstart

```
# build the mbigras/hello-world-app:0.0.1 image
cd ../app
make build
cd ../kubernetes
kubectl get pods
kubectl apply -f deployment.yml
kubectl get pods
kubectl get services
curl localhost:8080
kubectl delete -f deployment.yml
curl localhost:8080
```
