resource "aws_security_group_rule" "tfer--sg-0ae426c0fb4a168c8_egress_-1_-1_-1_0-002E-0-002E-0-002E-0-002F-0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = "0"
  protocol          = "-1"
  security_group_id = "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8_id}"
  to_port           = "0"
  type              = "egress"
}

resource "aws_security_group_rule" "tfer--sg-0ae426c0fb4a168c8_egress_tcp_3306_3306_sg-76fe530d" {
  from_port                = "3306"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8_id}"
  source_security_group_id = "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--default_sg-76fe530d_id}"
  to_port                  = "3306"
  type                     = "egress"
}

resource "aws_security_group_rule" "tfer--sg-0ae426c0fb4a168c8_ingress_tcp_0_65535_sg-76fe530d" {
  description              = "RDS Production"
  from_port                = "0"
  protocol                 = "tcp"
  security_group_id        = "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8_id}"
  source_security_group_id = "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--default_sg-76fe530d_id}"
  to_port                  = "65535"
  type                     = "ingress"
}
