variable "elb_name" {
	default = "mojterraformelb"
  
}

variable "az_zones" {
	default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  
}

variable "app_name" {
	default = "webserver"
}

variable "current_version" {
	default = "1.0"
}

variable "current_environment" {
	default = "dev"
}

variable "owner" {
	default = "thecamels"
}

variable "app_role" {
	default = "webserver"
  
}

variable "project" {
	default = "testwebserver"
  
}

variable "elb_listener" {
	type    = "map"
	default = {
		instance_port     = 8000
            instance_protocol = "http"
            lb_port           = 80
            lb_protocol       = "http"
	}
}

variable "health_check" {
	type = "map"
	default = {
			healthy_threshold        = 2
            unhealthy_threshold      = 2
            timeout                  = 3
            target                   = "HTTP:8000/"
            interval                 = 30
	}
}

variable "instanceid" {
	type = "string"
}