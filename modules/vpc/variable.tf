variable "create_vpc" {
  description = "Controls if VPC should be created"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "env" {
    description = ""
}

variable "cidr" {
    description = ""
    default = ""
}

variable "instance_tenancy" {
    description = ""
}

variable "enable_dns_hostnames" {
    description = ""
}

variable "enable_dns_support" {
    description = ""
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "igw_tags" {
  description = "Additional tags for the internet gateway"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  type        = map(string)
  default     = {}
} 
