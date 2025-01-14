variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0e2c8caa4b6378d8c"
}

variable "key_name" {
  default = "tf-project"
}

variable "instance_name" {
  default = "tf-beginner-challenge"
}

variable "key_path" {
    description = "Path to the private key. e.g. ~/.ssh/<name-of-private-key>.pem"
}