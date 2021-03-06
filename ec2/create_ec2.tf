terraform {
  required_providers {
    aws = "~> 2.0"
  }
}

provider "aws" {
  region = var.region
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
}
