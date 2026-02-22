terraform {
  backend "s3" {
    bucket         = "tf-state-challenge-bucket"
    region         = "us-east-2"
    encrypt        = true
    #key = "v4/gateway/dev/terraform.tfstate" # Será passado dinamicamente via -backend-config
  }
}