locals {
  app_lb_hostname = data.terraform_remote_state.work_order_service.outputs.challengeone_lb_hostname
  app_lb_name = substr(split(".", local.app_lb_hostname)[0], 0, 32)
}

data "aws_lb" "app_lb" {
  name = local.app_lb_name
}

data "aws_lb_listener" "app_lb_listener_80" {
  load_balancer_arn = data.aws_lb.app_lb.arn
  port              = 80
}

data "aws_lb" "stock_lb" {
  name = data.terraform_remote_state.stock_service.outputs.stock_lb_name
}

data "aws_lb_listener" "stock_listener_80" {
  load_balancer_arn = data.aws_lb.stock_lb.arn
  port              = 80
}