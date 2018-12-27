resource "aws_s3_bucket" "bucketLogicalname" {
  bucket = "${var.bucketName}"
  acl    = "private"

  tags = {
    Name        = "TerraformBucket"
    Environment = "Dev"
  }
  versioning  {
      enabled = true
  }
lifecycle_rule {
    enabled = true

 transition {
 days = "${var.std_to_IA}"
 storage_class = "STANDARD_IA"
 }

 transition {
     days = "${var.IA_to_glacier}"
     storage_class = "GLACIER"
 }

 expiration {
     days = "${var.expdays}"
 }
}
}
