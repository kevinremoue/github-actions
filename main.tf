provider "aws" {

}

#get data
data "aws_ecr_repository" "kevinremoue" {
    name = "kevinremoue"
}

#Setup EC2 instance
resource "aws_instance" "test" {
  instance_type         = "t2.micro"
  ami                   = "ami-06cffe063efe892ad"

  user_data = <<-EOF
    #!/bin/bash
    set -ex
    sudo yum update -y
    sudo amazon-linux-extras install docker -y
    sudo systemctl start docker
    sudo usermod -a -G docker ec2-user
  EOF
}
