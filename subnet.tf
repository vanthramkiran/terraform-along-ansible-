resource "aws_subnet" "subnet1-public" {
#Arguments
    vpc_id = "${aws_vpc.vpc1.id}"
    cidr_block = "${var.public_subnet1_cidr}"
    availability_zone = "us-east-1a"

    tags = {
      Name = "${var.vpc_name}-public-subnet-1"
      Project = local.projectname
      CostCenter = local.costcenter
    }
depends_on = [
   aws_internet_gateway.default
  ]
}

resource "aws_subnet" "subnet2-public" {
#Arguments
    vpc_id = "${aws_vpc.vpc1.id}"
    cidr_block = "${var.public_subnet2_cidr}"
    availability_zone = "us-east-1a"
    
    tags = {
      Name = "${var.vpc_name}-public-subnet-2"
      Project = local.projectname
      CostCenter = local.costcenter
    }
depends_on = [
   aws_subnet.subnet1-public
  ]
}

resource "aws_subnet" "subnet3-public" {
#Arguments
    vpc_id = "${aws_vpc.vpc1.id}"
    cidr_block = "${var.public_subnet3_cidr}"
    availability_zone = "us-east-1a"
    
    tags = {
      Name = "${var.vpc_name}-public-subnet-3"
      Project = local.projectname
      CostCenter = local.costcenter
    }
depends_on = [
    aws_subnet.subnet2-public
   ]
}
