resource "aws_db_instance" "db_instance" {
  allocated_storage    = 10
  engine               = "postgresql"
  engine_version       = "12.9"
  instance_class       = "db.t2.micro"
  name                 = var.db_name
  username             = "yegor"
  password             = random_password.password.result
  parameter_group_name = "default.postgres12"
  skip_final_snapshot  = true
}


resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}