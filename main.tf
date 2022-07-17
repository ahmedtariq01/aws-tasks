terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"

    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA24SYZGC6WLTNRKV2"
  secret_key = "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"
}
 
resource "aws_s3_bucket" "mybucket" {
  bucket = "ahmedt-bucket"
  acl = "public-read"
  policy = file("policy.json")
  website {
    index_document = "index.html"
}
}