
#################################################################################################
#                                 < EC2 Jenkins Module Variables >                              #
#################################################################################################

variable "ami" {
  description = "AMI to use"
  type        = string
  default     = "default"
}

variable "instance_count" {
  description = "Instance count for EC2 instance"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "default"
}

variable "key_pair_name" {
  description = "Key pair name"
  type        = string
  default     = "default"
}

variable "public_key" {
  description = "Public Key"
  type        = string
  default     = "default"
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
  default = "us-east-2c"
}

#################################################################################################
#                                  </ EC2 Jenkins Module Variables >                            #
#################################################################################################
