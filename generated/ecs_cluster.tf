resource "aws_ecs_cluster" "tfer--fav2-dev-cluster" {
  name = "fav2-dev-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster" "tfer--prod-apiCluster" {
  name = "prod-apiCluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
