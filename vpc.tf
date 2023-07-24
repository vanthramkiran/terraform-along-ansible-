resource "aws_vpc" "vpc1" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    tags = {
    Name = var.vpc_name
    Owner = var.vpc_owner
    environment = var. environment
    }
}

resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.vpc1.id}"
    tags = {
      Name = "${var.vpc_name}-IGW"
    }
}
