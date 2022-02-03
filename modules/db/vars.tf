variable "aws_region" { }
variable "aws_profile" { }
variable "environment" { }
variable "app_name" { }
variable "image_tag" { }
variable "app_count" { }

variable "db_name" { 
    default     = "db"
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
    default     = 10
}
variable "password" {
    default     = 10
}
variable "parameter_group_name" {
    default     = 10
 }