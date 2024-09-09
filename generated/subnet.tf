resource "aws_subnet" "tfer--subnet-0044a01eeeebcb089" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.1.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "🚀PublicAz2"
    "aws-cdk:subnet-name" = "prod-publicSN"
    "aws-cdk:subnet-type" = "Public"
  }

  tags_all = {
    Name                  = "🚀PublicAz2"
    "aws-cdk:subnet-name" = "prod-publicSN"
    "aws-cdk:subnet-type" = "Public"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-012442689a6a7a80d" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.5.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "🚀RdsPrivateAz2"
  }

  tags_all = {
    Name = "🚀RdsPrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-01bb4c7eeba090b5a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.4.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "🚀RdsPrivateAz1"
  }

  tags_all = {
    Name = "🚀RdsPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-02586dcbccca6798c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.2.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "DevPrivateAz1"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
  }

  tags_all = {
    Name                  = "DevPrivateAz1"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-03acf6b6c115ba8d5" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.3.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "🚀PrivateAz2"
    "aws-cdk:subnet-name" = "prod-privateSN"
    "aws-cdk:subnet-type" = "Isolated"
  }

  tags_all = {
    Name                  = "🚀PrivateAz2"
    "aws-cdk:subnet-name" = "prod-privateSN"
    "aws-cdk:subnet-type" = "Isolated"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-04b1415545ee0b240" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.64.128/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "GeneralPrivateAz1"
  }

  tags_all = {
    Name = "GeneralPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_subnet" "tfer--subnet-05400104d3b76ec4b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.5.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "DevRdsPrivateAz2"
  }

  tags_all = {
    Name = "DevRdsPrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-05f3099fb813700e2" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.0.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "DevPublicAz1"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
  }

  tags_all = {
    Name                  = "DevPublicAz1"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-065cc6b92dd50998d" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.3.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "DevPrivateAz2"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
  }

  tags_all = {
    Name                  = "DevPrivateAz2"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-07a0aef129970fae7" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.4.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "DevRdsPrivateAz1"
  }

  tags_all = {
    Name = "DevRdsPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-081a4d09dda3e39f8" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.0.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "🚀PublicAz1"
    "aws-cdk:subnet-name" = "prod-publicSN"
    "aws-cdk:subnet-type" = "Public"
  }

  tags_all = {
    Name                  = "🚀PublicAz1"
    "aws-cdk:subnet-name" = "prod-publicSN"
    "aws-cdk:subnet-type" = "Public"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-0a17a219d0f7f17df" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.10.2.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "🚀PrivateAz1"
    "aws-cdk:subnet-name" = "prod-privateSN"
    "aws-cdk:subnet-type" = "Isolated"
  }

  tags_all = {
    Name                  = "🚀PrivateAz1"
    "aws-cdk:subnet-name" = "prod-privateSN"
    "aws-cdk:subnet-type" = "Isolated"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_subnet" "tfer--subnet-0c84fbb7bff2cfe87" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.64.0/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "GeneralPrivateAz3"
  }

  tags_all = {
    Name = "GeneralPrivateAz3"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_subnet" "tfer--subnet-0fdaf6fe60c05f454" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.1.1.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "DevPublicAz2"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
  }

  tags_all = {
    Name                  = "DevPublicAz2"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_subnet" "tfer--subnet-cc3e8aa7" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "GeneralPublicAz1"
  }

  tags_all = {
    Name = "GeneralPublicAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_subnet" "tfer--subnet-f49d85b8" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "GeneralPublicAz3"
  }

  tags_all = {
    Name = "GeneralPublicAz3"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}
