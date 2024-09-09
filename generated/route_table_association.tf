resource "aws_route_table_association" "tfer--subnet-0044a01eeeebcb089" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-035b1eb80a5413989_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0044a01eeeebcb089_id}"
}

resource "aws_route_table_association" "tfer--subnet-012442689a6a7a80d" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0d4a8f89131fa8716_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-012442689a6a7a80d_id}"
}

resource "aws_route_table_association" "tfer--subnet-01bb4c7eeba090b5a" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0c118f2f68764a209_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-01bb4c7eeba090b5a_id}"
}

resource "aws_route_table_association" "tfer--subnet-02586dcbccca6798c" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0ad0b9a074bd2c63f_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-02586dcbccca6798c_id}"
}

resource "aws_route_table_association" "tfer--subnet-03acf6b6c115ba8d5" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0490e789339223935_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-03acf6b6c115ba8d5_id}"
}

resource "aws_route_table_association" "tfer--subnet-04b1415545ee0b240" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0d891b6b74d9cd092_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-04b1415545ee0b240_id}"
}

resource "aws_route_table_association" "tfer--subnet-05400104d3b76ec4b" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-032a364481bf65e29_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-05400104d3b76ec4b_id}"
}

resource "aws_route_table_association" "tfer--subnet-05f3099fb813700e2" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-013df2dbd781b548c_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-05f3099fb813700e2_id}"
}

resource "aws_route_table_association" "tfer--subnet-065cc6b92dd50998d" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0fe7ee8eb88ec84a7_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-065cc6b92dd50998d_id}"
}

resource "aws_route_table_association" "tfer--subnet-07a0aef129970fae7" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0268738ff3c8e530e_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-07a0aef129970fae7_id}"
}

resource "aws_route_table_association" "tfer--subnet-081a4d09dda3e39f8" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0db626255426dd783_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-081a4d09dda3e39f8_id}"
}

resource "aws_route_table_association" "tfer--subnet-0a17a219d0f7f17df" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0bc80879673f1d208_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0a17a219d0f7f17df_id}"
}

resource "aws_route_table_association" "tfer--subnet-0c84fbb7bff2cfe87" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-06bb908f9b63de63f_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0c84fbb7bff2cfe87_id}"
}

resource "aws_route_table_association" "tfer--subnet-0fdaf6fe60c05f454" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0d5e2cdc18a70dd21_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0fdaf6fe60c05f454_id}"
}

resource "aws_route_table_association" "tfer--subnet-cc3e8aa7" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0389b473e7c8d764a_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-cc3e8aa7_id}"
}

resource "aws_route_table_association" "tfer--subnet-f49d85b8" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-b44102df_id}"
  subnet_id      = "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-f49d85b8_id}"
}
