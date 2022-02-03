variable "aws_region" { }
variable "aws_profile" { }
variable "environment" { }
variable "app_name" { }
variable "image_tag" { }
variable "app_count" { }

variable "db_name" { 
    default     = "weather_bot"
}
variable "allocated_storage" {
    default     = 10
}
variable "engine" {
    default     = "postgresql"
}
variable "engine_version" {
    default     = "12.9"
}
variable "username" {
    default     = "weather_admin"
}