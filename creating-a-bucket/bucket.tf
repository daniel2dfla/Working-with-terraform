resource "aws_s3_bucket" "first_bucket" {
  bucket = "creating-bucket-danielnfirmiano"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.first_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}