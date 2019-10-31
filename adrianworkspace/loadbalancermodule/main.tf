resource "aws_elb" "bar" {
        name 		   = var.elb_name
        availability_zones = var.az_zones
        tags               = {
                Environment         = var.current_environment
                App                 = var.app_name
                Version             = var.current_version
                Owner               = var.owner
                Role                = var.app_role
                Project             = var.project
        }

        listener {

                instance_port       = var.elb_listener["instance_port"]
                instance_protocol   = var.elb_listener["instance_protocol"]
                lb_port             = var.elb_listener["lb_port"]
                lb_protocol         = var.elb_listener["lb_protocol"]
	}

	health_check {
		healthy_threshold   = var.health_check["healthy_threshold"]
		unhealthy_threshold = var.health_check["unhealthy_threshold"]
		timeout		    = var.health_check["timeout"]
		target		    = var.health_check["target"]
		interval 	    = var.health_check["interval"]
	}

}



resource "aws_elb_attachment" "baz" {
        elb	 = "${aws_elb.bar.id}"
        instance = var.instanceid
}



