terraform {
  required_version = "~> 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.63.0"
    }
  }
  backend "s3" {
    bucket = "gaurav-terraformstate"
    key = "gaurav-terraformstate.tfstate"
    region = "us-west-2"
    
  }
}

provider "aws" {
  region = var.aws_region[0]

}