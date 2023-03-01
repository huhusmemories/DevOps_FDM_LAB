terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.45.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "azurerm_resource_group" "rg1" {
  name     = "hs-az-rg"
  location = "Canada Central"

  tags = {
    source = "terraform"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
}
