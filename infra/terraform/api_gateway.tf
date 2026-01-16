resource "aws_apigatewayv2_api" "main_api" {
  name          = "main-http-api-${var.environment}"
  protocol_type = "HTTP"
}