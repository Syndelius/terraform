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

variable "instance_ami" {
	default = "ami-0dc9a8d2479a3c7d7"
}

variable "instance_type" {
	default = "t2.micro"
}

variable "storage_name" {
	default = "/dev/sdh"
}