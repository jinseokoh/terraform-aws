resource "aws_ecs_service" "tfer--fav2-dev-cluster_fav2-dev-api-svc" {
  alarms {
    enable   = "false"
    rollback = "false"
  }

  cluster = "fav2-dev-cluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "50"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "60"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "fav2-dev-api-container"
    container_port   = "3001"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:108634952344:targetgroup/Fleaa-fav2d-HRFO26EVZM2/b5b9d5d9546d90a3"
  }

  name = "fav2-dev-api-svc"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--FleaauctionStack-fav2devapisg6FE57974-AF5P8B9Z71ZP_sg-04bedd098f6771c92_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-02586dcbccca6798c_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-065cc6b92dd50998d_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:108634952344:task-definition/FleaauctionStackfav2devapitaskAC54ED99:15"
}

resource "aws_ecs_service" "tfer--fav2-dev-cluster_fav2-dev-scheduler-svc" {
  alarms {
    enable   = "false"
    rollback = "false"
  }

  cluster = "fav2-dev-cluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "50"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"
  name                               = "fav2-dev-scheduler-svc"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--FleaauctionStack-fav2devschedulersg_sg-0f74bd119805c6d9a_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-02586dcbccca6798c_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-065cc6b92dd50998d_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:108634952344:task-definition/FleaauctionStackfav2devschedulertask:8"
}

resource "aws_ecs_service" "tfer--fav2-dev-cluster_fav2-dev-worker-svc" {
  cluster = "fav2-dev-cluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "0"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"
  name                               = "fav2-dev-worker-svc"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--FleaauctionStack-fav2devworkersg_sg-07dc5b049fc15f995_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-02586dcbccca6798c_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-065cc6b92dd50998d_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:108634952344:task-definition/FleaauctionStackfav2devworkertask:11"
}

resource "aws_ecs_service" "tfer--prod-apiCluster_prod-apiSvc" {
  alarms {
    enable   = "false"
    rollback = "false"
  }

  cluster = "prod-apiCluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "50"
  desired_count                      = "3"
  enable_ecs_managed_tags            = "false"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "60"
  launch_type                        = "FARGATE"

  load_balancer {
    container_name   = "prod-apiContainer"
    container_port   = "3001"
    target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-2:108634952344:targetgroup/ProdS-proda-HLE48O9DBH1Y/d33268b7645f3097"
  }

  name = "prod-apiSvc"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ProdStack-prodapiSrvSG950BE6F4-3X4EWI8M83DV_sg-029282e2706c114d0_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-03acf6b6c115ba8d5_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0a17a219d0f7f17df_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:108634952344:task-definition/ProdStackApiTask:2"
}

resource "aws_ecs_service" "tfer--prod-apiCluster_prod-schedulerSvc" {
  cluster = "prod-apiCluster"

  deployment_circuit_breaker {
    enable   = "false"
    rollback = "false"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "100"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "0"
  launch_type                        = "FARGATE"
  name                               = "prod-schedulerSvc"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--prod-schedulerSG_sg-02efb7ce9f0a2138c_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-03acf6b6c115ba8d5_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0a17a219d0f7f17df_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"
  task_definition     = "arn:aws:ecs:ap-northeast-2:108634952344:task-definition/ProdStackSchedulerTask:5"
}
