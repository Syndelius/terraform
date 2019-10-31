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