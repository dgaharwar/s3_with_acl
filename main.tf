resource "aws_s3_bucket" "bucket" {
    bucket = "matt-test-10122012"
      tags = {
        Name        = "My bucket DG"
        Environment = "Dev"
      }
}
resource "aws_s3_bucket_acl" "acl" {
    bucket = aws_s3_bucket.bucket.id
    acl    = "private"
}
