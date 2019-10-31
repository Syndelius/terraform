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

variable "bucket_tags" {
	type= map
	default = {
		Name 		= "mojadriantest-bucket"
	}
}