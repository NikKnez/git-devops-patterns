# Staging infrastructure

variable "environment" {
  default = "staging"
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t3.small"  # Medium for staging
  
  tags = {
    Name        = "web-${var.environment}"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
