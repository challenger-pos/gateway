resource "aws_apigatewayv2_api" "main_api" {
  name          = "main-http-api"
  protocol_type = "HTTP"
  description   = "API Gateway for challengeone Kubernetes app"
  
  cors_configuration {
    allow_credentials = false
    allow_headers     = ["*"]
    allow_methods     = ["*"]
    allow_origins     = ["*"]
    max_age          = 300
  }
}