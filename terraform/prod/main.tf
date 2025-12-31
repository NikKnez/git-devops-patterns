# Production infrastructure

variable "environment" {
  default = "prod"
}

resource "aws_instance" "web" {
  ami           = "ami-12345678"
  instance_type = "t3.medium"  # Larger for production
  
  tags = {
    Name        = "web-${var.environment}"
    Environment = var.environment
    ManagedBy   = "Terraform"
    CostCenter  = "production"
  }
}
