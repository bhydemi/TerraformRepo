terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }

    }
}

provider "aws" {
    region = "us-east-1"
}



resource "random_id" "bucket_suffix" {
    byte_length = 4
}

module "app_bucket" {

    source = "../modules/s3_bucket"
    bucket_name = "app-local-${random_id.bucket_suffix.hex}"
    tags = {
        Project = "Demonstrate",
        Environment = var.environment
        ManagedBy = "Spiced Academy"
    }
    enable_versioning = true
}