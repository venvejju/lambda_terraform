function_name="test_function"
enable_vpc=true
vpc_subnet_ids=["subnet-04e80bdf9d3b1d6a6","subnet-0488dfde2a7e64bfc"]
security_group_ids = ["sg-02b63459c09a9a2af"]
runtime="python3.7"
handler="index.handler"
iam_role="arn:aws:iam::700322246881:role/lambda_role"
lambda_tags={env="Production",owner="vejju"}
environment_variables={app_name="redbus",sub_system="trains"}
bucket_name="vejju-bucket"
statement_id="AllowS3Invoke"
action="lambda:InvokeFunction"
s3_arn="arn:aws:s3:::vejju-bucket"
principal="s3.amazonaws.com"


