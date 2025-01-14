resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
  key_name               = var.key_name
  user_data              = file("scripts/install_apache.sh")
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  provisioner "file" {
    source      = "./website"
    destination = "/tmp"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file(var.key_path)
      host        = self.public_ip
    }
  }
}
