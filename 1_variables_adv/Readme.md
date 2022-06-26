In this exercise i tried to create ec2-instance but without giving my vpc/subnet resource here
then i faced an error 
Error: Reference to undeclared resource
│ 
│   on instance.tf line 22, in resource "aws_instance" "web":
│   22:   subnet_id = aws_subnet.public-subnet-1.id
│ 
│ A managed resource "aws_subnet" "public-subnet-1" has not been declared in the root module.
╵
i googled for how to declare resource in the root module.?

then after i created  module directory for vpc and subnet.
 which is subnet-module/

 called that root module to child modulex

 i resolved my issue finally..



