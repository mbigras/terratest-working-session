# terratest-working-session/test

> Automatically test a small python web application deployed to kubernetes.

## Overview

Welcome! This directory contains terratest code for automatically testing a small python web application deployed to kubernetes.

This tutorial was adapted from the Gruntwork [infrastructure-as-code-testing-talk](https://github.com/gruntwork-io/infrastructure-as-code-testing-talk) repository and [Automated Testing for Terraform, Docker, Packer, Kubernetes, and More
](https://youtu.be/xhHOW0EF5u8) presentation. Credit and license information is in LICENSE.txt

## Quickstart

```
go test -v -timeout 15m -run '^TestDockerKubernetesUnit$'
```
