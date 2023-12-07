terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.58.0"
      }
    }
    backend "s3" {
    bucket = "tbd-c39"
    key    = "state/terraform.state"
    region = "us-east-1"
    dynamodb_table = "c39"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}
