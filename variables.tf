variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "EC2 availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "user_data" {
  description = "user_data script path"
  type        = string
}

variable "public_key" {
  description = "Public key path"
  type        = string
}