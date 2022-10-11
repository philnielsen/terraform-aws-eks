resource "aws_route_table" "public" {
  for_each = { for sb in var.public_subnets : sb.name => sb }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  dynamic "route" {
    for_each = { for vpc in var.peered_vpcs : vpc.vpc_id => vpc }
    content {
      cidr_block                = route.value.cidr
      vpc_peering_connection_id = aws_vpc_peering_connection.infra_vpc_peer[route.value.vpc_id].id
    }
  }
  vpc_id = local.vpc_id
  tags = {
    "Name"                                   = each.value.name,
    "kubernetes.io/role/elb"                 = "1",
    "kubernetes.io/cluster/${var.deploy_id}" = "shared",
  }

}

resource "aws_route_table_association" "public" {
  for_each       = { for sb in var.public_subnets : sb.name => sb }
  subnet_id      = aws_subnet.public[each.value.name].id
  route_table_id = aws_route_table.public[each.value.name].id
}

resource "aws_route_table" "private" {
  for_each = { for sb in var.private_subnets : sb.name => sb }
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw[each.value.zone].id
  }

  dynamic "route" {
    for_each = { for vpc in var.peered_vpcs : vpc.vpc_id => vpc }
    content {
      cidr_block                = route.value.cidr
      vpc_peering_connection_id = aws_vpc_peering_connection.infra_vpc_peer[route.value.vpc_id].id
    }
  }

  # route {
  #   cidr_block                = var.infra_vpc_cidr
  #   vpc_peering_connection_id = aws_vpc_peering_connection.infra_vpc_peer[0].id
  # }
  vpc_id = local.vpc_id
  tags = {
    "Name"                                   = each.value.name,
    "kubernetes.io/role/internal-elb"        = "1",
    "kubernetes.io/cluster/${var.deploy_id}" = "shared",
  }
}

resource "aws_route_table_association" "private" {
  for_each       = { for sb in var.private_subnets : sb.name => sb }
  subnet_id      = aws_subnet.private[each.value.name].id
  route_table_id = aws_route_table.private[each.value.name].id
}
