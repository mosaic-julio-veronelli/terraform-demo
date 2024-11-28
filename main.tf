provider "aws" {
  region = var.aws_region
}

module "lambda" {
  source = "./lambda"
}

module "api_gateway" {
  source = "./api-gateway"
  lambda_name = module.lambda.lambda_name
  lambda_arn = module.lambda.lambda_arn
}
