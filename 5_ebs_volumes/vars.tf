variable "AWS_REGION" {
  default = "eu-west-2"
}
variable "AWS_PROFILE" {
  type    = string
  default = "SURESH AWS"

}
variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/id_rsa.pub"
}
variable "tags" {
  type    = string
  default = "example"

}
variable "zone" {
  type = string
  default = "eu-west-2a"
  
}
variable "ebs-volume-size" {
  type = number
  default = 5
  
}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "ami-0e52b5f0b50d5c811" # EU Ireland
    eu-west-2 = "ami-0fb391cce7a602d1f" # EU London
    us-east-1 = "mi-00d4e9ff62bc40e03"  # US N.virginia
  }
}
