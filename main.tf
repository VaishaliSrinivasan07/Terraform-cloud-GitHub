terraform {
    required_version = "~> 1.21.1" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-09e6f87a47903347c" 
	instance_type = "t2.micro"
}
