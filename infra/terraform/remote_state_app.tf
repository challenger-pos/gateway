data "terraform_remote_state" "app" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = local.app_state_path
    region = "us-east-2"
  }
}
