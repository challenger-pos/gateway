locals {
  lambda_state_path = "lambda/${var.environment}/terraform.tfstate"
}

locals {
  app_state_path = "app/${var.environment}/terraform.tfstate"
}

locals {
  kubernetes_state_path = "kubernetes/${var.environment}/terraform.tfstate"
}