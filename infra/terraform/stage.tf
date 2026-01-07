resource "aws_apigatewayv2_stage" "develop" {
  api_id      = aws_apigatewayv2_api.main_api.id
  name        = "$default"
  auto_deploy = true
}