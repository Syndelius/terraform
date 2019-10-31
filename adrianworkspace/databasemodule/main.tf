resource "aws_db_instance" "adriandb" {
        allocated_storage = var.db_values["allocated_storage"]
        storage_type	  = var.db_values["storage_type"]
        engine 		  = var.db_values["engine"]
        engine_version	  = var.db_values["engine_version"]
        instance_class	  = var.db_values["instance_class"]
        name 		  = var.db_values["name"]
        username 	  = var.db_values["username"]
        password 	  = var.db_values["password"]
        availability_zone = var.db_values["availability_zone"]
        tags              = {
                Environment  = var.current_environment
                App          = var.app_name
                Version      = var.current_version
                Owner        = var.owner
                Role         = var.app_role
                Project      = var.project
        }
}      
