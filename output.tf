output "base_url" {
  value = aws_apigatewayv2_stage.stage.invoke_url
}

output "url" {
  value = "${aws_apigatewayv2_stage.stage.invoke_url}/hello"
}
