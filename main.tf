resource "aws_vpc" "base" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "web1" {
  vpc_id            = aws_vpc.base.id
  count             = 4
  cidr_block        = element(var.subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = element(var.subnet_names, count.index)
  }
  depends_on = [aws_vpc.base]
}
