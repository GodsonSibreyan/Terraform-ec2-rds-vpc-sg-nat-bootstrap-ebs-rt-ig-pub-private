resource "aws_eip" "ElasticIp" {
instance = "${aws_instance.FirsttfInstance.id}"
vpc = true

}

resource "aws_eip" "nat" {
vpc = true
}

