resource "aws_s3_bucket" "bucket" {
  bucket = var.MYBUCKETNAME

  tags = {
    Name = "${var.MYBUCKETNAME}"
  }
}
