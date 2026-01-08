terraform {
  backend "s3" {
    bucket         = "tf-state-challenge-bucket"
    key            = "gateway/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}