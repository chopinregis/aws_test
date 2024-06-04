resource "aws_s3_bucket" "example" {
  count = 3
  bucket = "my-tf-test-bucket"
  force_destroy = false
  acl    = "private"

  tags = {
    Name        = "test-bucket-${count.index}"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Disabled"
  }
}


resource "aws_s3_bucket_object_lock_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}
