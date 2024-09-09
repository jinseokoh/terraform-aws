resource "aws_main_route_table_association" "tfer--vpc-00122d1bf6c6ee0d4" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-032a364481bf65e29_id}"
  vpc_id         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-00122d1bf6c6ee0d4_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-09ac47fd50a915cc8" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0c118f2f68764a209_id}"
  vpc_id         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-09ac47fd50a915cc8_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-517bc13a" {
  route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-b44102df_id}"
  vpc_id         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-517bc13a_id}"
}
