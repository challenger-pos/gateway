data "aws_lb" "challengeone_alb" {
  tags = {
    "ingress.k8s.aws/resource" = "LoadBalancer"
    "ingress.k8s.aws/stack"    = "${data.terraform_remote_state.application.outputs.ingress_namespace}/${data.terraform_remote_state.application.outputs.ingress_name}"
  }
}

data "aws_lb_listener" "challengeone_listener" {
  load_balancer_arn = data.aws_lb.challengeone_alb.arn
  port              = 80
}