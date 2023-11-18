variable "function_name" {
    description = "name of the lambda function"
    type = string

}

variable "enable_vpc" {
    description = "Enable VPC Configuration"
    type = bool
}

variable "vpc_subnet_ids" {
    description="list of Subnets"
    type = list(string)
    
}

variable "vpc_security_group_ids" {
    description = "List of Security groups"
    type = list(string)

}

variable "runtime" {
    description = "runtime such as NodeJS, Python"
    type = string
}

variable "handler" {
    description = "Handler of lambda"
    type = string
}

variable "iam_role" {
    description = "Role of the IAM"
    type = string
    default = "arn:aws:iam::700322246881:role/lambda_role"
}

variable "lambda_tags" {
    description = "Tags of the lambda"
    type = map(string)
}

variable "environment_variables" {
    description = "ENV of the lambda"
    type = map(string)
}

variable "statement_id" {

    description = "statement_id of the s3 Eg:AllowS3Invoke"
    type = string

}

variable "action" {

    description = "Action of the lambda_function lambda:InvokeFunction"
    type = string

}


variable "s3_arn" {

    description = "ARN of the s3 bucket"
    type = string

}

variable "principal" {

    description = "Prinicipal of s3 s3.amazonaws.com"
    type = string

}



