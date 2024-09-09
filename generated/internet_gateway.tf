resource "aws_internet_gateway" "tfer--igw-003ef9dc9e6080f61" {
  tags = {
    Name = "🚀InternetGateway"
  }

  tags_all = {
    Name = "🚀InternetGateway"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_internet_gateway" "tfer--igw-04d9862a01cceb427" {
  tags = {
    Name = "DevInternetGateway"
  }

  tags_all = {
    Name = "DevInternetGateway"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_internet_gateway" "tfer--igw-c9afc6a1" {
  tags = {
    Name = "GeneralInternetGateway"
  }

  tags_all = {
    Name = "GeneralInternetGateway"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}
