# Purpose: Reserved for the AWS compute module implementation.
data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "web" {

  ami           = data.aws_ssm_parameter.amazon_linux.value
  instance_type = var.instance_type

  subnet_id = var.public_subnet_1_id

  vpc_security_group_ids = [
    var.ec2_security_group_id
  ]

  key_name = var.key_name

  associate_public_ip_address = true

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "${var.project_name}-${var.environment}-web-01"
  }
}