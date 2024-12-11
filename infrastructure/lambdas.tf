module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "node-lambda-tf"
  description   = "My awesome lambda function"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  publish       = true

  create_package         = false
  local_existing_package = "../lambdas/dist/index.zip"

  tags = {
    Name = "node-lambda-tf"
  }

  allowed_triggers = { APIGatewayAny = {
    service    = "apigateway"
    source_arn = "${module.api_gateway.api_arn}/*/*/*"
    },
  }
}

