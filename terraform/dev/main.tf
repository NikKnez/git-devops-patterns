# Development infrastructure

variable "environment" {
  default = "dev"
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t3.micro"  # Small for dev
  
  tags = {
    Name        = "web-${var.environment}"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
