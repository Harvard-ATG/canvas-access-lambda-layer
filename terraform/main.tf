provider "aws" {
  region = "us-east-1"
}

resource "aws_lambda_layer_version" "canvas" {
  filename = "../canvasLayer.zip"
  layer_name = "canvasLambda"
  compatible_runtimes = ["python3.9"]
}
