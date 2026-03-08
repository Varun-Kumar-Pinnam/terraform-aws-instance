resource "aws_instance" "example" {
ami = var.ami_id
instance_type = var.instance_type
vpc_security_group_ids = [aws_security_group.create_SG.id]

tags = {
    Name = "test module"
    terraform = true
}
}

resource "aws_security_group" "create_SG" {
  name        = "terraform_allow_tls"
  description = "Allow traffic"
 
  tags = {
    Name = "terraform_allow_tls"
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}
