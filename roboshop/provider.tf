terraform {
  backend "s3" {
    bucket = "terraform-b62"
    key    = "roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}