resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.deployer.key_name

  tags = {
    Name = "prod-webserver"
  }
}

resource "aws_instance" "myinstance" {
    ami                                  = "ami-07860a2d7eb515d9a"
    instance_type                        = "t2.micro"
    subnet_id                            = aws_subnet.public.id
    tags                                 = {
        "Name" = "manual-instance"
    }
    vpc_security_group_ids               = [aws_security_group.ec2_sg.id]
}