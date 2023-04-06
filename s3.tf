resource "aws_s3_bucket" "bucket" {
  bucket = "sais123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
