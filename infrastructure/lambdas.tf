module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "node-lambda-tf"
  description   = "My awesome lambda function"
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  create_package         = false
  local_existing_package = "../lambdas/dist/index.zip"

  tags = {
    Name = "node-lambda-tf"
  }
}

