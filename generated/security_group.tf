resource "aws_security_group" "tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8" {
  description = "Security Group for Quicksight"
  name        = "Amazon-QuickSight-access."

  tags = {
    Name = "v1 quicksight-seoul"
  }

  tags_all = {
    Name = "v1 quicksight-seoul"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--FleaauctionStack-fav2devalbsg9EA66EB1-1FGD5CS9OR5EU_sg-0601fbd0838c83fb8" {
  description = "FleaauctionStack/fav2-dev-alb-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow from anyone on port 80"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "FleaauctionStack-fav2devalbsg9EA66EB1-1FGD5CS9OR5EU"

  tags = {
    Name = "dev-80,443"
  }

  tags_all = {
    Name = "dev-80,443"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--FleaauctionStack-fav2devapisg6FE57974-AF5P8B9Z71ZP_sg-04bedd098f6771c92" {
  description = "FleaauctionStack/fav2-dev-api-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "from sg-0601fbd0838c83fb8:3001"
    from_port       = "3001"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--FleaauctionStack-fav2devalbsg9EA66EB1-1FGD5CS9OR5EU_sg-0601fbd0838c83fb8_id}"]
    self            = "false"
    to_port         = "3001"
  }

  name = "FleaauctionStack-fav2devapisg6FE57974-AF5P8B9Z71ZP"

  tags = {
    Name = "dev-3001"
  }

  tags_all = {
    Name = "dev-3001"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--FleaauctionStack-fav2devschedulersg_sg-0f74bd119805c6d9a" {
  description = "FleaauctionStack/fav2-dev-scheduler-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3002"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3002"
  }

  name = "FleaauctionStack-fav2devschedulersg"

  tags = {
    Name = "dev-3002"
  }

  tags_all = {
    Name = "dev-3002"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--FleaauctionStack-fav2devworkersg_sg-07dc5b049fc15f995" {
  description = "FleaauctionStack/fav2-dev-worker-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3003"
  }

  name = "FleaauctionStack-fav2devworkersg"

  tags = {
    Name = "dev-3003"
  }

  tags_all = {
    Name = "dev-3003"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--ProdStack-prodalbSGE031BA83-SHU6CJIF2BV9_sg-04d1091292d7be5b8" {
  description = "ProdStack/prod-albSG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow from anyone on port 80"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "ProdStack-prodalbSGE031BA83-SHU6CJIF2BV9"

  tags = {
    Name = "prod-80,443"
  }

  tags_all = {
    Name = "prod-80,443"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--ProdStack-prodapiSrvSG950BE6F4-3X4EWI8M83DV_sg-029282e2706c114d0" {
  description = "ProdStack/prod-apiSrvSG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "from sg-04d1091292d7be5b8:3001"
    from_port       = "3001"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ProdStack-prodalbSGE031BA83-SHU6CJIF2BV9_sg-04d1091292d7be5b8_id}"]
    self            = "false"
    to_port         = "3001"
  }

  name = "ProdStack-prodapiSrvSG950BE6F4-3X4EWI8M83DV"

  tags = {
    Name = "prod-3001"
  }

  tags_all = {
    Name = "prod-3001"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--default_sg-0272dcf831a814e29" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "default"

  tags = {
    Name = "prod-all-from-self"
  }

  tags_all = {
    Name = "prod-all-from-self"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--default_sg-0b7350d6eac2679c2" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "default"

  tags = {
    Name = "dev-all-from-self"
  }

  tags_all = {
    Name = "dev-all-from-self"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--default_sg-76fe530d" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  egress {
    description     = "quicksight-seoul"
    from_port       = "0"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8_id}"]
    self            = "false"
    to_port         = "65535"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  ingress {
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--Amazon-QuickSight-access-002E-_sg-0ae426c0fb4a168c8_id}", "${data.terraform_remote_state.local.outputs.aws_security_group_tfer--launch-wizard-1_sg-0afbb7d39e20736c0_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "default"

  tags = {
    Name = "v1 mysql-8-0-prod"
  }

  tags_all = {
    Name = "v1 mysql-8-0-prod"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--ec2-rds-1_sg-07fd1b3ca1c4c5b0a" {
  description = "Security group attached to instances to securely connect to aurora-test. Modification could lead to connection loss."

  egress {
    description     = "Rule to allow connections to aurora-test from any instances this security group is attached to"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--rds-ec2-1_sg-005282b733a5118ca_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "ec2-rds-1"

  tags = {
    Name = "dev-out-3306"
  }

  tags_all = {
    Name = "dev-out-3306"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--ec2-rds-2_sg-0027a06fe29db3552" {
  description = "Security group attached to instances to securely connect to mysql8. Modification could lead to connection loss."

  egress {
    description     = "Rule to allow connections to mysql8 from any instances this security group is attached to"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--rds-ec2-2_sg-0df42802facae2566_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "ec2-rds-2"

  tags = {
    Name = "nest-rds"
  }

  tags_all = {
    Name = "nest-rds"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--fav2-bastion-sg_sg-03339a4c84cb3f068" {
  description = "bastion host security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "fav2-bastion-sg"

  tags = {
    Name = "dev-22"
  }

  tags_all = {
    Name = "dev-22"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--fav2-dev-mysql-sg_sg-043112ebd1692e538" {
  description = "MySQL security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "MySQL"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    description = "traffic from self"
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name = "fav2-dev-mysql-sg"

  tags = {
    Name = "dev-3306,all-from-self"
  }

  tags_all = {
    Name = "dev-3306,all-from-self"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--fav2-dev-redis-sg_sg-0d7cb8e3cb43f8c37" {
  description = "Redis security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Redis"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "fav2-dev-redis-sg"

  tags = {
    Name = "dev-6379"
  }

  tags_all = {
    Name = "dev-6379"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--fav2-dev-rmq-sg_sg-07a0af44e66184511" {
  description = "FleaauctionStack/fav2-dev-rmq-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:15671"
    from_port   = "15671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "15671"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:5671"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "fav2-dev-rmq-sg"

  tags = {
    Name = "dev-5671,15671,443"
  }

  tags_all = {
    Name = "dev-5671,15671,443"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--fav2-prod-quicksight_sg-013955a463d64cde4" {
  description = "amazon quicksight access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["13.124.145.32/27"]
    description = "Seoul AWS QuickSight"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "fav2-prod-quicksight"

  tags = {
    Name = "prod-quicksight"
  }

  tags_all = {
    Name = "prod-quicksight"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0afbb7d39e20736c0" {
  description = "launch-wizard-1 created 2021-02-04T15:53:25.909+08:00"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "3306"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "7000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "launch-wizard-1"

  tags = {
    Name = "v1 prod-server"
  }

  tags_all = {
    Name = "v1 prod-server"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--launch-wizard-6_sg-0c3263678417ccea3" {
  description = "launch-wizard-6 created 2022-02-24T20:05:05.838+09:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "4001"
    protocol    = "tcp"
    self        = "false"
    to_port     = "4001"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "7000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "7000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "launch-wizard-6"

  tags = {
    Name = "v1 dev (22,80,3306,6379)"
  }

  tags_all = {
    Name = "v1 dev (22,80,3306,6379)"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--mysql-8-0-test_sg-0db451947f2874194" {
  description = "RDS MySQL 8.0 Test Security Group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  ingress {
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--launch-wizard-6_sg-0c3263678417ccea3_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "mysql-8-0-test"

  tags = {
    Name = "v1 mysql-8-0-test"
  }

  tags_all = {
    Name = "v1 mysql-8-0-test"
  }

  vpc_id = "vpc-517bc13a"
}

resource "aws_security_group" "tfer--prod-auroraSG_sg-0ca447cc6d770c165" {
  description = "MySQL/Aurora security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "MySQL"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    description = "traffic from self"
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name = "prod-auroraSG"

  tags = {
    Name = "prod-3306,all-from-self"
  }

  tags_all = {
    Name = "prod-3306,all-from-self"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--prod-bastionSG_sg-05db30b28938be918" {
  description = "bastion security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name = "prod-bastionSG"

  tags = {
    Name = "prod-22"
  }

  tags_all = {
    Name = "prod-22"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--prod-redisSG_sg-0ecd6651735653a7b" {
  description = "Redis security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "redis"
    from_port   = "6379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "6379"
  }

  name = "prod-redisSG"

  tags = {
    Name = "prod-6379"
  }

  tags_all = {
    Name = "prod-6379"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--prod-rmqSG_sg-0c84e694f9f3533f7" {
  description = "ProdStack/prod-rmqSG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:15671"
    from_port   = "15671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "15671"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "from 0.0.0.0/0:5671"
    from_port   = "5671"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5671"
  }

  name = "prod-rmqSG"

  tags = {
    Name = "prod-5671,15671,443"
  }

  tags_all = {
    Name = "prod-5671,15671,443"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--prod-schedulerSG_sg-02efb7ce9f0a2138c" {
  description = "prod-3002"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3002"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3002"
  }

  name = "prod-schedulerSG"

  tags = {
    Name = "prod-3002"
  }

  tags_all = {
    Name = "prod-3002"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--prod-workerSG_sg-0797b29ec3362f0fc" {
  description = "prod-3003"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3003"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3003"
  }

  name = "prod-workerSG"

  tags = {
    Name = "prod-3003"
  }

  tags_all = {
    Name = "prod-3003"
  }

  vpc_id = "vpc-09ac47fd50a915cc8"
}

resource "aws_security_group" "tfer--rds-ec2-1_sg-005282b733a5118ca" {
  description = "Security group attached to aurora-test to allow EC2 instances with specific security groups attached to connect to the database. Modification could lead to connection loss."

  ingress {
    description     = "Rule to allow connections from EC2 instances with sg-07fd1b3ca1c4c5b0a attached"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ec2-rds-1_sg-07fd1b3ca1c4c5b0a_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "rds-ec2-1"

  tags = {
    Name = "dev-in-3306"
  }

  tags_all = {
    Name = "dev-in-3306"
  }

  vpc_id = "vpc-00122d1bf6c6ee0d4"
}

resource "aws_security_group" "tfer--rds-ec2-2_sg-0df42802facae2566" {
  description = "Security group attached to mysql8 to allow EC2 instances with specific security groups attached to connect to the database. Modification could lead to connection loss."

  ingress {
    description     = "Rule to allow connections from EC2 instances with sg-0027a06fe29db3552 attached"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ec2-rds-2_sg-0027a06fe29db3552_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "rds-ec2-2"

  tags = {
    Name = "nest-rds"
  }

  tags_all = {
    Name = "nest-rds"
  }

  vpc_id = "vpc-517bc13a"
}
