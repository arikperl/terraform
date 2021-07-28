module "vpc_dev" {
  source                           = "../modules/vpc"
  env                              = "DEV"                         
  cidr                             = "10.101.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_hostnames             = true
  enable_dns_support               = true
}
