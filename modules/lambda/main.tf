resource "aws_lambda_function" "lambda_func" {
    function_name = var.function_name
    handler = var.handler
    runtime = var.runtime
    filename = "lambda_function.zip"
    source_code_hash = filebase64("${path.module}/lambda_function.zip")
    role = var.iam_role
    vpc_config {
        subnet_ids = var.enable_vpc ? var.vpc_subnet_ids : null
        security_group_ids = var.enable_vpc ? var.vpc_security_group_ids : null
    }
    tags = var.lambda_tags
    environment {
        variables = var.environment_variables
    }
    
}

resource "aws_lambda_permission" "test" {
  statement_id  = var.statement_id
  action        = var.action
  function_name = aws_lambda_function.lambda_func.arn
  principal = var.principal
  source_arn = var.s3_arn
}
