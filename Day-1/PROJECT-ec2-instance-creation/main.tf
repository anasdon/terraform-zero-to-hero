terraform {
required_provider {
 aws = {
   source = "hashcorp/aws"
   version = "~> 3.11.9"
   }
 }

required_version = ">= 1.2.0"

}

# Set your desired AWS region

provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "example" {
    ami           = "ami-028362553645"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
