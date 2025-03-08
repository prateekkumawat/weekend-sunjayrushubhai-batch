output "project_sec_grp" {
  value = aws_security_group.dev_sec_sg.id
}

output "project_sec_grp2" {
  value = aws_security_group.dev_sec_sg2.id
}

output "project_sec_db_security"{
  value = aws_security_group.dev_db_sec1.id
}
