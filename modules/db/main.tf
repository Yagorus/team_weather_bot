resource "aws_db_instance" "db_instance" {
  depends_on = [aws_ssm_parameter.token]
  allocated_storage    = 10
  engine               = "postgres"
  engine_version       = "12.9"
  instance_class       = "db.t2.micro"
  identifier           = var.db_name
  username             = "yegor"
  password             = random_password.password.result
  parameter_group_name = "default.postgres12"
  skip_final_snapshot  = true
}


resource "random_password" "password" {
  length           = 16
  special          = true
}

resource "aws_ssm_parameter" "token" {
  depends_on = [random_password.password]
  name  = "password_db"
  type  = "String"
  value = random_password.password.result
  overwrite = false
  tags = {
    Name = "${var.app_name}-${var.environment}-password_db"
  }
}