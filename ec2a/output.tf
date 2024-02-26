output "public_ip" {
    value = aws_instance.Demo_ec2.public_ip
}
output "az" {
    value = aws_instance.Demo_ec2.availability_zone
}
output "ssh-command" {
    value = "ssh -i ~/Downloads/week7d2.pem ec2-user@${aws_instance.Demo_ec2.public_ip}"
}