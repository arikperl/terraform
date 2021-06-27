output "instances_ids" {
  value = aws_instance.my_server[*].id
}

output "instances_public_ips" {
  value = aws_instance.my_server[*].public_ip
}