resource "aws_s3_bucket" "bucket" {
  bucket = "my-public-bucket"
  acl    = "public-read"  // Dangerous, publicly accessible

  tags = {
    Name = "My bucket"
  }
}