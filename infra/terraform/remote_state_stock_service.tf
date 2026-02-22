data "terraform_remote_state" "stock_service" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = local.stock_service_state_path
    region = "us-east-2"
  }
}