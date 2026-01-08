# variable "private_subnet_ids" {
#   description = "IDs das subnets privadas onde o VPC Link será criado"
#   type        = list(string)
# }

# variable "vpc_link_sg_id" {
#   description = "ID do Security Group usado pelo VPC Link do API Gateway"
#   type        = string
# }

variable "environment" {
  description = "Ambiente de implantação (ex: develop, prod)"
  type        = string
}