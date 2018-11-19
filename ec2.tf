resource "aws_instance" "FirsttfInstance" {
ami = "ami-013be31976ca2c322"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.tfpublicsubnet.id}"
key_name = "devops"
user_data = "${file("userdata.txt")}"
get_password_data = "false"
availability_zone = "us-east-1a"
security_groups = [
                    "${aws_security_group.tfsecuritygroup.id}"
                  ]

tags {
       Name = "TerraformInstance"
     }

}

