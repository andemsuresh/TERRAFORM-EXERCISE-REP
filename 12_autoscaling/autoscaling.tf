terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "sample-exercise-suresh-bucket"
    dynamodb_table = "terraform_dynamoDB"
    key            = "global/s3/12_autoscaling.tfstate"
    region         = "eu-west-2"
    # access_key = "<aws_access_key>"
    # secret_key = "<aws_secret_key>"
  }
}

resource "aws_launch_configuration" "example-launchconfig" {
  name_prefix     = "example-launchconfig"
  image_id        = lookup(var.AMIS, var.AWS_REGION)
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.mykeypair.key_name
  security_groups = [aws_security_group.allow-ssh.id]
}

resource "aws_autoscaling_group" "example-autoscaling" {
  name                      = "example-autoscaling"
  vpc_zone_identifier       = [aws_subnet.main-public-1.id, aws_subnet.main-public-2.id]
  launch_configuration      = aws_launch_configuration.example-launchconfig.name
  min_size                  = 1
  max_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "EC2"
  force_delete              = true

  # tags = {
  #     key = "Name"
  #     value = "ec2 instance"
  #     propagate_at_launch = true
  # }
}

