data "terraform_remote_state" "infra" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = local.kubernetes_state_path
    region = "us-east-2"
  }
}
