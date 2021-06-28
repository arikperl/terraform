resource "aws_vpc" "this" {
  count = var.create_vpc ? 1 : 0
  name                             = "VPC-${var.env}"
  cidr_block                       = var.cidr
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.enable_ipv6

  tags = merge(
    {
      "Name" = format("%s", aws_vpc.this.name)
    },
    var.tags,
    var.vpc_tags,
  )
}