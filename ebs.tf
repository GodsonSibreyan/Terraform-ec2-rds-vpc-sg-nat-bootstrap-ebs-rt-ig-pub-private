resource "aws_ebs_volume" "tfebs" {
size = 40
encrypted = "True"
availability_zone = "us-east-1a"
tags {
       Name = "tfebs"

     }
}


resource "aws_volume_attachment" "ebs_tf" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.tfebs.id}"
  instance_id = "${aws_instance.FirsttfInstance.id}"
}
