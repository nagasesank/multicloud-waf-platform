# Purpose: Reserved for the AWS security module implementation.
resource "aws_security_group" "alb_sg" {

  name        = "${var.project_name}-${var.environment}-alb-sg"
  description = "Security Group for Application Load Balancer"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.project_name}-${var.environment}-alb-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "alb_http" {

  security_group_id = aws_security_group.alb_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 80
  to_port   = 80

  ip_protocol = "tcp"

  description = "Allow HTTP"
}

resource "aws_vpc_security_group_egress_rule" "alb_outbound" {

  security_group_id = aws_security_group.alb_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow all outbound"
}

resource "aws_security_group" "ec2_sg" {

  name        = "${var.project_name}-${var.environment}-ec2-sg"
  description = "Security Group for EC2"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ec2_http" {

  security_group_id = aws_security_group.ec2_sg.id

  referenced_security_group_id = aws_security_group.alb_sg.id

  from_port = 80
  to_port   = 80

  ip_protocol = "tcp"

  description = "Allow HTTP from ALB"
}

resource "aws_vpc_security_group_ingress_rule" "ec2_ssh" {

  security_group_id = aws_security_group.ec2_sg.id

  cidr_ipv4 = "${var.my_ip}/32"

  from_port = 22
  to_port   = 22

  ip_protocol = "tcp"

  description = "SSH from Admin"
}

resource "aws_vpc_security_group_egress_rule" "ec2_outbound" {

  security_group_id = aws_security_group.ec2_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow all outbound"
}