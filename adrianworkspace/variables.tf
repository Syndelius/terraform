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

variable "region_name" {
	default = "eu-west-1"
}

variable "instance_ami" {
	default = "ami-0dc9a8d2479a3c7d7"
}

variable "elb_name" {
	default = "mojterraformelb"
  
}

variable "az_zones" {
	default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  
}

variable "instance_type" {
	default = "t2.micro"
}

variable "storage_name" {
	default = "/dev/sdh"
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

variable "bucket_tags" {
	type= map
	default = {
		Name 		= "mojadriantest-bucket"
	}
}

variable "db_values" {
	type = "map"
	default = {
		allocated_storage = 15
        storage_type	  = "gp2"
        engine 		  	  = "mysql"
        engine_version	  = "8.0"
        instance_class	  = "db.t2.micro"
        name 		  	  = "adriandb"
        username 	  	  = "AdrianSzymorek"
        password 	  	  = "SZymorian*^6"
        availability_zone = "eu-west-1c"
	}
}

variable "instance_count" {
	default = "1"
}