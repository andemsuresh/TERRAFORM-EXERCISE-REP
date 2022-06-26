resource "aws_key_pair" "Exercise-key" {
  key_name   = "Exercise-key"
  public_key = file("${var.PATH_TO_PUBLIC_KEY}")
}
