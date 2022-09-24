resource "aws_s3_bucket" "s3" {
  bucket        = "terraform-test-101"
  force_destroy = true
}
