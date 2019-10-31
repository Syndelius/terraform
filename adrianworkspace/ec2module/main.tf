resource "aws_instance" "ec2test" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = {
          Environment = var.current_environment
          App         = var.app_name
          Version     = var.current_version
          Owner       = var.owner
          Role        = var.app_role
          Project     = var.project
  }
}

resource "aws_ebs_volume" "testvolume" {
        availability_zone = "eu-west-1c"
        size 		  = 20
        tags              = {
                Environment = var.current_environment
                App         = var.app_name
                Version     = var.current_version
                Owner       = var.owner
                Role        = var.app_role
                Project     = var.project
        }
}




resource "aws_volume_attachment" "ebs_att" {
        device_name = var.storage_name
        volume_id   = "${aws_ebs_volume.testvolume.id}"
        instance_id = "${aws_instance.ec2test.id}"
}



