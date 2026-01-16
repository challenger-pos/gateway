data "terraform_remote_state" "auth_lambda" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = local.lambda_state_path
    region = "us-east-2"
  }
}