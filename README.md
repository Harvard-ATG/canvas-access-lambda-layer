# Canvas API Lambda Layer

This repository defines a zip file for use as an AWS Lambda Layer. The layer is intended to provide access to libraries that make working with the [Canvas API](https://canvas.instructure.com/doc/api/) easier.

The `canvasLayer.zip` file is checked into version control, but version changes will be noisy in the `python` directory that file is generated from, so it's not included.

## Terraform

The `terraform` directory can be used as a terraform module from this git repository. The source should look something like this:

```
source: github.com/Harvard-ATG/canvas-access-lambda-layer//terraform
```

The `//` denotes the break between the address of the repository and the path to the terraform module within the repository. See the [Terraform documentation on sources](https://developer.hashicorp.com/terraform/language/modules/sources) for a full description of options in referencing module sources from a git repository.

In my experience, you can safely include this module in multiple terraform configurations in the same account, and it will just add additional revisions as long as the layer name is the same.
