data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


module "subnet-ref" {
  source      = "/Users/sureshandem/terraform-lab/terraform-exercise-repo/subnet-module"
  cidr-blocks = ["10.0.0.0/16" , "10.0.0.0/24"]
  tag         = "exercise"
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = module.subnet-ref.subnet-id

  tags = {
    Name = "${var.tag}-instance"
  }
}