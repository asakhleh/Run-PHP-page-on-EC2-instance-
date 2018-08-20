# Configure the AWS Provider
provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "static-app" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${aws_security_group.staic_app_sg.id}"]
  key_name = "${var.key_pair_name}"
  tags {
        Name = "static-app"
  }
  # The below lines will be ran at startup
  user_data = <<EOF
  #!/bin/bash
  yum install httpd -y
  yum update -y

  echo "Hi, I am running" > /var/www/html/index.php
  service httpd start
  chkconfig httpd on

EOF
}


