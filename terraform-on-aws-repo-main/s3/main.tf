provider "aws" {
 access_key = “AKIAZ64X6ZCI7EDASZGY”
 secret_key =“4McjUbJDHNlm/zwQGQ3frkpn6Ho22sH8FKPMHrZ2”
 region= “us-east-2”
}


resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
