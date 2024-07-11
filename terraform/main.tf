provider "aws" {
  region = var.region
}


resource "aws_instance" "ci_cd_instance" {
  ami           = "ami-0862be96e41dcbf74" 
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "CI-CD-Instance"
  }

 provisioner "file" {
    source      = "../scripts/setup.sh"
    destination = "/tmp/setup.sh"
 
  connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }

 provisioner "remote-exec" {
   inline = [
     "echo '${file("~/.ssh/ansible.pub")}' >> ~/.ssh/authorized_keys",
      "chmod 600 ~/.ssh/authorized_keys"
  ]

  connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }
}

resource "aws_security_group" "allow_ssh" {
  name_prefix = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
