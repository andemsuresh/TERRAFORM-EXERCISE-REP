

resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.aws_region)
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-subnet-1.id
}

