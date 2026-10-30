terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "test-vpc-2" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "test-vpc-2"
  }
}
