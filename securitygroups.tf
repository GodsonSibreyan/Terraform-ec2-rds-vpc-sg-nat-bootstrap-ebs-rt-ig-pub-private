resource "aws_security_group" "tfsecuritygroup" {
vpc_id = "${aws_vpc.tfvpc.id}"
ingress {
      protocol = "tcp"
      self = true
      from_port = 22
      to_port = 22
      cidr_blocks = ["0.0.0.0/0"]
         }

egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      }

ingress {
      protocol = "tcp"
      self  = true
      from_port = 80
      to_port = 80 
      cidr_blocks = ["0.0.0.0/0"]
        }

tags {
       Name = "tfsecuritygroup"
     }

}


resource "aws_security_group" "dbsg"{
vpc_id = "${aws_vpc.tfvpc.id}"
ingress {
       protocol = "tcp"
       from_port = "3306"
       to_port = "3306"
       security_groups = [ 
                            "${aws_security_group.tfsecuritygroup.id}"
                         ]
        }

egress {
      protocol = "tcp"
      from_port = "3306"
      to_port = "3306"
      security_groups = [
                          "${aws_security_group.tfsecuritygroup.id}"
                        ]



}



tags {
      Name = "dbsecuritygroup"
     }

}
