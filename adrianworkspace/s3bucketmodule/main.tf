resource "aws_s3_bucket" "bucket" {
        bucket = "mojadriantest-bucket"
        acl    = "public-read-write"
        tags   = {
                Name        = var.bucket_tags["Name"]
                Environment = var.current_environment
                App         = var.app_name
                Version     = var.current_version
                Owner       = var.owner
                Role        = var.app_role
                Project     = var.project
        }
}

