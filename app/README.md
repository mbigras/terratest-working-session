# terratest-working-session/hello-world-app

> Contains a small python web application for testing.

## Overview

Welcome! This directory contains a small python web application for testing.
You can build and run this application using Docker.
For a kubernetes example use the `../kubernetes` directory.
For a terratest example us the `../test` directory.

This tutorial was adapted from the Gruntwork [infrastructure-as-code-testing-talk](https://github.com/gruntwork-io/infrastructure-as-code-testing-talk) repository and [Automated Testing for Terraform, Docker, Packer, Kubernetes, and More
](https://youtu.be/xhHOW0EF5u8) presentation. Credit and license information is in LICENSE.txt

## Quickstart

```
make build
make run
# open a new terminal
curl localhost:9000/
```
