resource "aws_db_subnet_group" "default" {
  name       = "aws-rds-project-vpc-subnetgrp"
  subnet_ids = [var.db_private_subnet-az1, var.db_private_subnet_az2]
  tags = {
    Name = "aws-rds-project-vpc-subnetgrp"
  }
}

resource "aws_db_instance" "default" {
  identifier           = "mysql-rds-db"  
  allocated_storage    = 20
  max_allocated_storage = 100
  db_name              = "mysqlrdsdb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Redhat123456"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = [var.project_sec_db_security]
  db_subnet_group_name = aws_db_subnet_group.default.id
  backup_retention_period     = 7
}