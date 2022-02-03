resource "random_password" "password" {
  length           = 16
  special          = true
}

resource "aws_ssm_parameter" "password_db" {
  depends_on = [random_password.password]
  name  = "${var.app_name}-${var.environment}-password_db"
  type  = "String"
  value = random_password.password.result
  overwrite = false
  tags = {
    Name = "${var.app_name}-${var.environment}-password_db"
  }
}

