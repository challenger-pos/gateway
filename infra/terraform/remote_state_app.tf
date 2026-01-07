data "terraform_remote_state" "app" {
  backend = "s3"

  config = {
    bucket = "tf-state-challenge-bucket"
    key    = "app/develop/terraform.tfstate"
    region = "us-east-2"
  }
}
