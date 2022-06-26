resource "aws_vpc" "exercise-vpc" {
  cidr_block = var.cidr-blocks[0]
  tags = {
    Name = var.tag
  }
}
resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.exercise-vpc.id
  cidr_block = var.cidr-blocks[1]
  tags = {
    Name = "${var.tag}-pub-subnet-1"
  }
}
