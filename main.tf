terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-bucket-aws-hs"
}

resource "aws_s3_bucket" "bucket" {

}

resource "aws_instance" "inst" {

}

resource "aws_instance" "inst-2" {

}
