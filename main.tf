# AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVN5PUXV6MNMW3QRN"
  secret_key = "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"
}

# ansible master
resource "aws_instance" "ansible_master" {
  ami                    = "ami-02358d9f5245918a3"
  instance_type          = "t2.micro"
  subnet_id              = " subnet-015887dcd31fd9863"
  key_name               = "vamshi"
  private_ip             = "10.0.0.35"
  vpc_security_group_ids = ["sg-07ca1ed44b6f86cb2"]
  user_data              = file("install.sh")

  tags = {
    Name = "ansible master"
  }
}

# ansible n1 - amazon
resource "aws_instance" "ansible_n1" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-015887dcd31fd9863"
  key_name               = "vamshi"
  private_ip             = "10.0.0.36"
  vpc_security_group_ids = ["sg-07ca1ed44b6f86cb2"]

  tags = {
    Name = "ansible n1"
  }
}

# ansible n2 - ubuntu
resource "aws_instance" "ansible_n2" {
  ami                    = "ami-04505e74c0741db8d"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-015887dcd31fd9863"
  key_name               = "vamshi"
  private_ip             = "10.0.0.37"
  vpc_security_group_ids = ["sg-07ca1ed44b6f86cb2"]

  tags = {
    Name = "ansible n2"
  }
}

