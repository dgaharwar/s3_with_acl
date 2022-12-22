resource "aws_s3_bucket" "bucket" {
    bucket = "matt-test-10122011"
      tags = {
        Name        = "My bucket RENAME"
        Environment = "Dev"
      }
}
resource "aws_s3_bucket_acl" "acl" {
    bucket = aws_s3_bucket.bucket.id
    acl    = "private"
}