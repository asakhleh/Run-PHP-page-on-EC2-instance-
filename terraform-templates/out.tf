# Output the public IP address of the newly created EC2
output "public_ip"  {
  value = "${aws_instance.static-app.public_ip}"
}