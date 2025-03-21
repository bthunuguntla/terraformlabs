
resource "random_id" "randomidone" {
  byte_length = 8
}

resource "aws_s3_bucket" "terraform-state-files" {
  bucket = "infrastatefile-bhanu-${random_id.randomidone.hex}"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_object" "_01-terraform-init" {
  bucket = aws_s3_bucket.terraform-state-files.id
  key    = "01-terraform-init/"
}

resource "aws_s3_object" "_20-vpc" {
  bucket = aws_s3_bucket.terraform-state-files.id
  key    = "20-vpc/"
}