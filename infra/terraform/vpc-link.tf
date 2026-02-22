/*resource "aws_apigatewayv2_vpc_link" "app" {
  name               = "app-vpc-link"
  subnet_ids         = data.terraform_remote_state.infra.outputs.eks_private_subnets
  security_group_ids = [data.terraform_remote_state.infra.outputs.challengeone_sg_id]
}*/

resource "aws_apigatewayv2_vpc_link" "app" {
  name               = "app-vpc-link"
  subnet_ids         = data.terraform_remote_state.networking.outputs.private_app_subnet_ids
  security_group_ids = [data.terraform_remote_state.infra.outputs.cluster_custom_security_group_id]
}
