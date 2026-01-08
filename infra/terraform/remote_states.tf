data "terraform_remote_state" "infra" {
  backend = "s3"
  config = {
    bucket = "tf-state-challenge-bucket"
    key    = "challengeOne/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "application" {
  backend = "s3"
  config = {
    bucket = "tf-state-challenge-bucket"
    key    = "app/dev/terraform.tfstate"
    region = "us-east-2"
  }
}

# data "terraform_remote_state" "auth_lambda" {
#   backend = "s3"

#   config = {
#     bucket = "tf-state-challenge-bucket"
#     key    = "lambda/${var.environment}/terraform.tfstate"
#     region = "us-east-2"
#   }
# }