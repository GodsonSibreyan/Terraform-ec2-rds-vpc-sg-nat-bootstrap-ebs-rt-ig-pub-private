resource "aws_route_table_association" "tf" {
subnet_id = "${aws_subnet.tfpublicsubnet.id}"
route_table_id = "${aws_route_table.tf.id}"
}



resource "aws_route_table_association" "tfprivate" {
subnet_id = "${aws_subnet.tfprivatesubnet.id}"
route_table_id = "${aws_route_table.tfprivate.id}"

}
