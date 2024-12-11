module "api_gateway" {
  source = "terraform-aws-modules/apigateway-v2/aws"

  name          = "tf-api-gateway"
  description   = "Terraform HTTP API Gateway"
  protocol_type = "HTTP"

  create_domain_name = false

  # Routes & Integration(s)
  routes = {
    "GET /" = {
      integration = {
        uri = module.lambda_function.lambda_function_arn
      }
    }
  }
}
