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

# Create aws instance
resource "aws_instance" "inst" {
  ami           = var.ami_value
  instance_type = var.ins_type_t3_micro
}

# Create buckets with interpolation
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket-name}-${count.index}"
  count  = var.count-number
}

# Create users
resource "aws_iam_user" "users" {
  for_each = toset(var.list-users)
  name     = each.value
}
