provider "aws" {
region = "ap-south-1"
access_key = "AKIAQDK3UVSYXIQPA3HW"
secret_key = "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"
}
resource "aws_instance" "web" {
instance_type = "t2.micro"
ami           = "ami-02eb7a4783e7e9317"
key_name      = "sai123445667777777777777777777777"
count         = 1
tags = {
Name = "project"
}
}