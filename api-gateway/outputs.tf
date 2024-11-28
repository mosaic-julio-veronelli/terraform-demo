output "lambda_url" {
  value       = "${aws_apigatewayv2_stage.stage.invoke_url}/hello"
  description = "Lambda function endpoint URL"
}
