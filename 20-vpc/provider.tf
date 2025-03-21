terraform {
  required_version = "1.11.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.92.0"
    }
  }

  backend "s3" {
    bucket = "infrastatefile-bhanu-2b94d37a2aa23ddc"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
