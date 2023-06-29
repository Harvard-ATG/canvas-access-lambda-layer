# Canvas API Lambda Layer

This repository defines a zip file for use as an AWS Lambda Layer. The layer is intended to provide access to libraries that make working with the [Canvas API](https://canvas.instructure.com/doc/api/) easier.

The `canvasLayer.zip` file is checked into version control, but version changes will be noisy in the `python` directory that file is generated from, so it's not included.

## Terraform

This repo contains a sample terraform file meant to add the lambda layer to an AWS account.
