terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
  backend "s3" {
    bucket = "terraform-hsit"
    key    = "tfstate"
    region = "ap-south-1"
    }
}

provider "aws" {
  region = "ap-south-1"
}