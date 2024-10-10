resource "aws_s3_bucket" "bucket" {
  bucket = "my-public-bucket"
  acl    = "private"  // Dangerous, publicly accessible

  tags = {
    Name = "My bucket"
  }
}