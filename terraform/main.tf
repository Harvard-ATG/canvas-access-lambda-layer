provider "aws" {
  region = "us-east-1"
}

data "local_file" "lambda_layer" {
  filename = "${path.module}/canvasLayer.zip"
}

resource "aws_lambda_layer_version" "canvas" {
  filename = data.local_file.lambda_layer.filename
  layer_name = "canvasLambda"
  compatible_runtimes = ["python3.9"]

  source_code_hash = data.local_file.lambda_layer.content_base64sha256
}

output "layer_name" {
  value = aws_lambda_layer_version.canvas.layer_name
}
