provider "aws" {
  alias  = "hub"
  region = var.region

  assume_role {
    role_arn = var.account_a_role
  }
}

provider "aws" {
  alias  = "spoke"
  region = var.region

  assume_role {
    role_arn = var.account_b_role
  }
}
