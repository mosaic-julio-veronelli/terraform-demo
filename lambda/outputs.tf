output "lambda_name" {
  value       = aws_lambda_function.lambda.function_name
  description = "Lambda function name"
}

output "lambda_arn" {
  value       = aws_lambda_function.lambda.invoke_arn
  description = "Lambda function ARN"
}
