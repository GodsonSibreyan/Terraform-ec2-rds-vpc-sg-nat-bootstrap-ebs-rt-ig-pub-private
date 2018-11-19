resource "aws_db_instance" "tfrds" {
allocated_storage = "10"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
name = "mytfdb"
username = "sunny"
skip_final_snapshot = "True"
password = "Horo90210"
availability_zone = "us-east-1a"
backup_retention_period = "7"
backup_window = "00:05-00:35"
/*Encryption won't work on "db.t2.micro" 
storage_encrypted = "True" */

db_subnet_group_name = "${aws_db_subnet_group.tfdbsubnetgroup.id}"
vpc_security_group_ids = [
                        "${aws_security_group.dbsg.id}"
                       ]
/* kms_key_id = "${aws_kms_key.tfkms.arn}"  */
}

output "rds link" {
  description = "The address of the RDS Instnce"
  value = "${aws_db_instance.tfrds.address}"
}

/*

resource "aws_kms_key" "tfkms" {
is_enabled = "true"
tags {
       Name = "TfKms"

}
}
*/



