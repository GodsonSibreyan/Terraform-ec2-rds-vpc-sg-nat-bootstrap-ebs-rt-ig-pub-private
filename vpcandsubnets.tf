resource "aws_vpc" "tfvpc" {
         cidr_block = "192.2.0.0/16"
enable_dns_hostnames = "true"
tags {
         Name = "Terraform"
     }
                             }

resource "aws_subnet" "tfpublicsubnet" {
        vpc_id = "${aws_vpc.tfvpc.id}"
        cidr_block = "192.2.2.0/24"
        availability_zone = "us-east-1a"
tags {
        Name = "TerraformSubnets"
     }
                                  }

resource "aws_subnet" "tfprivatesubnet" {
         vpc_id = "${aws_vpc.tfvpc.id}"
         cidr_block = "192.2.3.0/24"
         availability_zone = "us-east-1b"
tags {
        Name = "TerraformSubnets"
     }
                                         }

resource "aws_subnet" "tfpublicsubnet2" {
         vpc_id = "${aws_vpc.tfvpc.id}"
         cidr_block = "192.2.4.0/24"
         availability_zone = "us-east-1c"
tags {
        Name = "TerraformSubnets"
     }
}
