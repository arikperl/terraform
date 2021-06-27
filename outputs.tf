output "instances_ids" {
  value = aws_instance.my_ubuntu[*].id
}

output "instances_public_ips" {
  value = aws_instance.my_ubuntu[*].public_ip
}