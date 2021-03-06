data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket         = "terraform-infra-poc"
    key            = "terraform-root-vpc/tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-resource"
  }
}

data "terraform_remote_state" "iam" {
  backend = "s3"

  config = {
    bucket         = "terraform-infra-poc"
    key            = "terraform-root-iam/tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-iam"
  }
}

data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket         = "terraform-infra-poc"
    key            = "terraform-root-eks/tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-resource"
  }
}
