resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  force_destroy = false

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
