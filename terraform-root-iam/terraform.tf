terraform {
  required_version = ">= 0.12.6"

  backend "s3" {
    bucket         = "terraform-infra-poc"
    key            = "terraform-root-iam/tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-resource-lock"
  }
}

