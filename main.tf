provider "aws" {}

#----------------------------------------------------------
#  Terraform - From Zero to Certified Professional
#
# Build EC2 Instances
#
# Made by Denis Astahov
#----------------------------------------------------------


resource "aws_instance" "my_ubuntu" {
  ami           = "ami-0ac43988dfd31ab9a" # This is Comments
  instance_type = "t3.micro"              // This is also Comments
// key_name      = "denis-key-oregon"

  tags = {
    Name    = "My-UbuntuLinux-Server"
    Owner   = "Denis Astahov"
    project = "Phoenix"
  }
}



data "aws_vpc" "new2" {
  id="vpc-0abbc701e08595e9c"
}

data "aws_region" "current" {}

output "region_name" {
  value = data.aws_region.current.name
}

output "region_description" {
  value = data.aws_region.current.description
}


data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "vpc_cidr" {
  value = data.aws_vpc.new2.cidr_block
}
