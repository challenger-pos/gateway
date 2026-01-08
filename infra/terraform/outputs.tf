# output "api_base_url" {
#   value = aws_apigatewayv2_stage.develop.invoke_url
# }

# output "vpc_link_sg_id" {
#   value = aws_security_group.vpc_link_sg.id
# }

output "api_gateway_url" {
  value = aws_apigatewayv2_stage.develop.invoke_url
}