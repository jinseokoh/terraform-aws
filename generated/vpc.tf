resource "aws_vpc" "tfer--vpc-00122d1bf6c6ee0d4" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.1.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "development"
  }

  tags_all = {
    Name = "development"
  }
}

resource "aws_vpc" "tfer--vpc-09ac47fd50a915cc8" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.10.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "🚀production"
  }

  tags_all = {
    Name = "🚀production"
  }
}

resource "aws_vpc" "tfer--vpc-517bc13a" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "general"
  }

  tags_all = {
    Name = "general"
  }
}
