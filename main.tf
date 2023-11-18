provider "aws" {
    region = "ap-south-1"
}

module "lambda" {
    source = "./modules/lambda"
    function_name = var.function_name
    enable_vpc = var.enable_vpc
    vpc_subnet_ids = var.vpc_subnet_ids
    vpc_security_group_ids = var.security_group_ids
    handler = var.handler
    runtime = var.runtime
    iam_role = var.iam_role
    lambda_tags = var.lambda_tags
    environment_variables = var.environment_variables
    statement_id = var.statement_id
    action = var.action
    s3_arn = var.s3_arn
    principal = var.principal

}

module "s3_event_not" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
    lambda_function_arn = module.lambda.lambda_arn
    

}
