resource "aws_apigatewayv2_vpc_link" "app" {
  name               = "app-vpc-link"
  subnet_ids         = data.terraform_remote_state.infra.outputs.private_subnet_ids # IDs das subnets privadas onde o app roda
  security_group_ids = [data.terraform_remote_state.infra.outputs.api_gateway_vpc_link_security_group_id]  # SG que permite tráfego do API Gateway para o app

  tags = {
    Name = "challengeone-vpc-link"
  }
}