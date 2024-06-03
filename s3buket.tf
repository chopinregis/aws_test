resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  force_destroy = false
  acl    = "private"
  versioning_configuration {
    status = "Disabled"
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
