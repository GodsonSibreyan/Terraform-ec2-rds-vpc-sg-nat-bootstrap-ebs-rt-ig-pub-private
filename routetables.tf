resource "aws_route_table" "tf" {
vpc_id = "${aws_vpc.tfvpc.id}"

route{
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.tfgw.id}"
}

tags {
       Name = "Publicroute"

}
}

resource "aws_route_table" "tfprivate" {
vpc_id = "${aws_vpc.tfvpc.id}"

route{
cidr_block = "0.0.0.0/0"
nat_gateway_id = "${aws_nat_gateway.ngw.id}"

}
tags {
       Name = "Privateroute"
}
}

