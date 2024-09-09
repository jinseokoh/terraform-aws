resource "aws_ecs_task_definition" "tfer--task-definition-002F-FleaauctionStackfav2devapitaskAC54ED99" {
  container_definitions    = "[{\"dockerSecurityOptions\":[],\"environment\":[{\"name\":\"ADMIN_URL\",\"value\":\"https://admin-demo.fleaauction.world\"},{\"name\":\"GOOGLE_APPLICATION_CREDENTIALS\",\"value\":\"./fcm-dev.account-key.json\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:fav2/dev/mysql-VmwjC0\"},{\"name\":\"NODE_ENV\",\"value\":\"dev\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-f7efbe2e-d410-41d0-851c-ca8ad905120d.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"dev-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"fav2-dev-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"REDIS_PORT\",\"value\":\"6379\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-api:latest\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/FleaauctionStackfav2devapitask\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"fav2-dev-api\"}},\"mountPoints\":[],\"name\":\"fav2-dev-api-container\",\"portMappings\":[{\"containerPort\":3001,\"hostPort\":3001,\"name\":\"fav2-dev-api-container-3001-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::108634952344:role/FleaauctionStack-fav2devapitaskExecutionRole6904A1-1OCTZHMUYM81S"
  family                   = "FleaauctionStackfav2devapitaskAC54ED99"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/FleaauctionV2EcsTaskRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-FleaauctionStackfav2devschedulertask" {
  container_definitions    = "[{\"environment\":[{\"name\":\"ADMIN_URL\",\"value\":\"https://admin-demo.fleaauction.world\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:fav2/dev/mysql-VmwjC0\"},{\"name\":\"NODE_ENV\",\"value\":\"dev\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-9a187f5e-f44c-4b1e-9225-947f85ee4626.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"dev-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"fav2-dev-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"REDIS_PORT\",\"value\":\"6379\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-scheduler:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/FleaauctionStackfav2devschedulertask\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"}},\"mountPoints\":[],\"name\":\"fav2-dev-scheduler-container\",\"portMappings\":[{\"containerPort\":3002,\"hostPort\":3002,\"name\":\"fav2-dev-scheduler-container-3002-tcp\",\"protocol\":\"tcp\"}],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::108634952344:role/FleaauctionStack-fav2devapitaskExecutionRole6904A1-1OCTZHMUYM81S"
  family                   = "FleaauctionStackfav2devschedulertask"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/FleaauctionV2EcsTaskRole"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-FleaauctionStackfav2devworkertask" {
  container_definitions    = "[{\"environment\":[{\"name\":\"GOOGLE_APPLICATION_CREDENTIALS\",\"value\":\"./fcm-dev.account-key.json\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:fav2/dev/mysql-VmwjC0\"},{\"name\":\"NODE_ENV\",\"value\":\"dev\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-f7efbe2e-d410-41d0-851c-ca8ad905120d.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"dev-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"fav2-dev-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"REDIS_PORT\",\"value\":\"6379\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-worker:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-stream-prefix\":\"fav2-dev-worker\",\"awslogs-group\":\"/ecs/FleaauctionStackfav2devworkertask\",\"awslogs-region\":\"ap-northeast-2\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"fav2-dev-worker-container\",\"portMappings\":[{\"containerPort\":3003,\"hostPort\":3003,\"name\":\"fav2-dev-worker-container-3003-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::108634952344:role/FleaauctionStack-fav2devapitaskExecutionRole6904A1-1OCTZHMUYM81S"
  family                   = "FleaauctionStackfav2devworkertask"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/FleaauctionStack-fav2devapitaskExecutionRole6904A1-1OCTZHMUYM81S"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-ProdStackApiTask" {
  container_definitions    = "[{\"dockerSecurityOptions\":[],\"environment\":[{\"name\":\"ADMIN_URL\",\"value\":\"https://admin.fleaauction.world\"},{\"name\":\"BULLMQ_HOST\",\"value\":\"prod-bullmq-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"GOOGLE_APPLICATION_CREDENTIALS\",\"value\":\"./fcm-prod.account-key.json\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:prod/aurora/mysql-3WGQES\"},{\"name\":\"NODE_ENV\",\"value\":\"prod\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-4cd9fcca-3fcc-4070-a8bf-c98ac2168ce1.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"prod-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"prod-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-api:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-stream-prefix\":\"ecs\",\"awslogs-group\":\"/ecs/prodApi\",\"awslogs-region\":\"ap-northeast-2\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"prod-apiContainer\",\"portMappings\":[{\"containerPort\":3001,\"hostPort\":3001,\"name\":\"prod-apicontainer-3001-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "1024"
  execution_role_arn       = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskExecutionRoleB8C0C458-2NGIO1SIZZLV"
  family                   = "ProdStackApiTask"
  memory                   = "2048"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskTaskRole18C9FAE4-1BVXGYZZ23UBG"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-ProdStackSchedulerTask" {
  container_definitions    = "[{\"environment\":[{\"name\":\"ADMIN_URL\",\"value\":\"https://admin.fleaauction.world\"},{\"name\":\"BULLMQ_HOST\",\"value\":\"prod-bullmq-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:prod/aurora/mysql-3WGQES\"},{\"name\":\"NODE_ENV\",\"value\":\"prod\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-4cd9fcca-3fcc-4070-a8bf-c98ac2168ce1.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"prod-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"prod-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-scheduler:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/prodScheduler\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"prod-schedulerContainer\",\"portMappings\":[{\"containerPort\":3002,\"hostPort\":3002,\"name\":\"prod-schedulercontainer-3002-tcp\",\"protocol\":\"tcp\"}],\"systemControls\":[],\"volumesFrom\":[]}]"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskExecutionRoleB8C0C458-2NGIO1SIZZLV"
  family                   = "ProdStackSchedulerTask"
  memory                   = "1024"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskTaskRole18C9FAE4-1BVXGYZZ23UBG"
  track_latest  = "false"
}

resource "aws_ecs_task_definition" "tfer--task-definition-002F-ProdStackWorkerTask" {
  container_definitions    = "[{\"environment\":[{\"name\":\"GOOGLE_APPLICATION_CREDENTIALS\",\"value\":\"./fcm-prod.account-key.json\"},{\"name\":\"MYSQL_SECRETS_ARN\",\"value\":\"arn:aws:secretsmanager:ap-northeast-2:108634952344:secret:prod/aurora/mysql-3WGQES\"},{\"name\":\"NODE_ENV\",\"value\":\"prod\"},{\"name\":\"RABBITMQ_HOST\",\"value\":\"amqps://b-4cd9fcca-3fcc-4070-a8bf-c98ac2168ce1.mq.ap-northeast-2.amazonaws.com:5671\"},{\"name\":\"RABBITMQ_QUEUE\",\"value\":\"prod-rmq\"},{\"name\":\"REDIS_HOST\",\"value\":\"fav2-prod-redis-cluster.gjpidd.ng.0001.apn2.cache.amazonaws.com\"},{\"name\":\"REDIS_PORT\",\"value\":\"6379\"}],\"essential\":true,\"image\":\"108634952344.dkr.ecr.ap-northeast-2.amazonaws.com/fav2-worker:latest\",\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"/ecs/prodWorker\",\"awslogs-region\":\"ap-northeast-2\",\"awslogs-stream-prefix\":\"ecs\"},\"secretOptions\":[]},\"mountPoints\":[],\"name\":\"prod-workerContainer\",\"portMappings\":[{\"containerPort\":3003,\"hostPort\":3003,\"name\":\"prod-workercontainer-3003-tcp\",\"protocol\":\"tcp\"}],\"volumesFrom\":[]}]"
  cpu                      = "256"
  execution_role_arn       = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskExecutionRoleB8C0C458-2NGIO1SIZZLV"
  family                   = "ProdStackWorkerTask"
  memory                   = "512"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  runtime_platform {
    operating_system_family = "LINUX"
  }

  task_role_arn = "arn:aws:iam::108634952344:role/ProdStack-prodapiTaskTaskRole18C9FAE4-1BVXGYZZ23UBG"
  track_latest  = "false"
}
