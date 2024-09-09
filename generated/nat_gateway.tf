resource "aws_nat_gateway" "tfer--nat-009da3d3ab47e1f8c" {
  allocation_id                      = "eipalloc-0741cf95c706791fa"
  connectivity_type                  = "public"
  private_ip                         = "10.1.0.33"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-05f3099fb813700e2"

  tags = {
    Name = "DevNATGatewayAz1"
  }

  tags_all = {
    Name = "DevNATGatewayAz1"
  }
}

resource "aws_nat_gateway" "tfer--nat-025edcd9b20c22793" {
  allocation_id                      = "eipalloc-0a9966025748189f8"
  connectivity_type                  = "public"
  private_ip                         = "10.10.1.85"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-0044a01eeeebcb089"

  tags = {
    Name = "🚀NATGatewayAz2"
  }

  tags_all = {
    Name = "🚀NATGatewayAz2"
  }
}

resource "aws_nat_gateway" "tfer--nat-0945bd1f730db6e91" {
  allocation_id                      = "eipalloc-0bcb19e3b9324352b"
  connectivity_type                  = "public"
  private_ip                         = "10.10.0.44"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-081a4d09dda3e39f8"

  tags = {
    Name = "🚀NATGatewayAz1"
  }

  tags_all = {
    Name = "🚀NATGatewayAz1"
  }
}

resource "aws_nat_gateway" "tfer--nat-0c42e9023cbde6064" {
  allocation_id                      = "eipalloc-015bc43d011e05280"
  connectivity_type                  = "public"
  private_ip                         = "10.1.1.57"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-0fdaf6fe60c05f454"

  tags = {
    Name = "DevNATGatewayAz2"
  }

  tags_all = {
    Name = "DevNATGatewayAz2"
  }
}
