data "terraform_remote_state" "work_order_service" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = local.work_order_service_state_path
    region = "us-east-2"
  }
}
