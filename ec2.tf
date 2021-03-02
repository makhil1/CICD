resource "aws_instance" "Qlik-QA" {
  ami           = "ami-05c6b990b0e19b937"
  instance_type = "t2.micro"
  availability_zone = "eu-west-2a"
  key_name = "terraform-key"
  security_groups = ["${aws_security_group.allow_rdp.name}"]
  tags = {
    Name = "Qlik-Replcate-Active"
  }
  }
