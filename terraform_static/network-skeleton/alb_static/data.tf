data "terraform_remote_state" "vpc" {
  backend = "s3"
  config  = var.remote_states["vpc"]
}

data "terraform_remote_state" "subnet" {
  backend = "s3"
  config  = var.remote_states["subnet"]
}
