resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true

  tags = {
    Environment = var.env
  }
}