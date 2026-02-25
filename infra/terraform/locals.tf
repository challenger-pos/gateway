locals {
  lambda_state_path = "v4/lambda/${var.environment}/terraform.tfstate"
}

locals {
  app_state_path = "app/${var.environment}/terraform.tfstate"
}

locals {
  kubernetes_state_path = "v4/kubernetes/${var.environment}/terraform.tfstate"
}

locals {
  stock_service_state_path = "v4/service-stock/${var.environment}/terraform.tfstate"
}

locals {
  networking_state_path = "v4/networking/${var.environment}/terraform.tfstate"
}

locals {
  work_order_service_state_path = "v4/work-order-service/${var.environment}/terraform.tfstate"
}

