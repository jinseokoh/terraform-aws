resource "aws_route_table" "tfer--rtb-013df2dbd781b548c" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-04d9862a01cceb427"
  }

  tags = {
    Name = "DevPublicAz1"
  }

  tags_all = {
    Name = "DevPublicAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-0268738ff3c8e530e" {
  tags = {
    Name = "DevRdsPrivateAz1"
  }

  tags_all = {
    Name = "DevRdsPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-032a364481bf65e29" {
  tags = {
    Name = "DevRdsPrivateAz2"
  }

  tags_all = {
    Name = "DevRdsPrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-035b1eb80a5413989" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-003ef9dc9e6080f61"
  }

  tags = {
    Name = "🚀PublicAz2"
  }

  tags_all = {
    Name = "🚀PublicAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-0389b473e7c8d764a" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-c9afc6a1"
  }

  tags = {
    Name = "GeneralPublicAz1"
  }

  tags_all = {
    Name = "GeneralPublicAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_route_table" "tfer--rtb-0490e789339223935" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-025edcd9b20c22793"
  }

  tags = {
    Name = "🚀PrivateAz2"
  }

  tags_all = {
    Name = "🚀PrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-06bb908f9b63de63f" {
  tags = {
    Name = "GeneralPrivateAz3"
  }

  tags_all = {
    Name = "GeneralPrivateAz3"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_route_table" "tfer--rtb-0ad0b9a074bd2c63f" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-009da3d3ab47e1f8c"
  }

  tags = {
    Name = "DevPrivateAz1"
  }

  tags_all = {
    Name = "DevPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-0bc80879673f1d208" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0945bd1f730db6e91"
  }

  tags = {
    Name = "🚀PrivateAz1"
  }

  tags_all = {
    Name = "🚀PrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-0c118f2f68764a209" {
  tags = {
    Name = "🚀RdsPrivateAz1"
  }

  tags_all = {
    Name = "🚀RdsPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-0d4a8f89131fa8716" {
  tags = {
    Name = "🚀RdsPrivateAz2"
  }

  tags_all = {
    Name = "🚀RdsPrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-0d5e2cdc18a70dd21" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-04d9862a01cceb427"
  }

  tags = {
    Name = "DevPublicAz2"
  }

  tags_all = {
    Name = "DevPublicAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-0d891b6b74d9cd092" {
  tags = {
    Name = "GeneralPrivateAz1"
  }

  tags_all = {
    Name = "GeneralPrivateAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}

resource "aws_route_table" "tfer--rtb-0db626255426dd783" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-003ef9dc9e6080f61"
  }

  tags = {
    Name = "🚀PublicAz1"
  }

  tags_all = {
    Name = "🚀PublicAz1"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_route_table" "tfer--rtb-0fe7ee8eb88ec84a7" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0c42e9023cbde6064"
  }

  tags = {
    Name = "DevPrivateAz2"
  }

  tags_all = {
    Name = "DevPrivateAz2"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_route_table" "tfer--rtb-b44102df" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-c9afc6a1"
  }

  tags = {
    Name = "GeneralPublicAz3"
  }

  tags_all = {
    Name = "GeneralPublicAz3"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}
