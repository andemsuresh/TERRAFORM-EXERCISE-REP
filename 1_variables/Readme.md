    when i try to run existing code it says 
Error: error configuring Terraform AWS Provider: failed to get shared config profile, terraform

  then i realise that i need to give the terraform aws provider
configuration after that i ran terraform plan command i got the below error

 Error: Failed to query available provider packages
│ 
│ Could not retrieve the list of available versions for provider hashicorp/aws: locked provider
│ registry.terraform.io/hashicorp/aws 4.18.0 does not match configured version constraint ~> 4.17.1; must use terraform init
│ -upgrade to allow selection of new versions

then i ran terraform apply command , i got the below error that i dont have default vpc

Error: creating EC2 Instance: VPCIdNotSpecified: No default VPC for this user. GroupName is only supported for EC2-Classic and default VPC.

so , now i have created vpc.tf file 

then i resolved this issue..
