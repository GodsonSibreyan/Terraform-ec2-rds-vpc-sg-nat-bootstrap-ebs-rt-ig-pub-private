resource "aws_internet_gateway" "tfgw"{
vpc_id = "${aws_vpc.tfvpc.id}"

tags {
       Name = "tfgateway"
     }
}

resource "aws_nat_gateway" "ngw"{
allocation_id = "${aws_eip.nat.id}"
subnet_id = "${aws_subnet.tfprivatesubnet.id}"

tags {
       Name = "NatGatewaytf"
     }
}

