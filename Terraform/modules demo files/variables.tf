variable "region" {
  description = "choose your aws region"
  type        = string
}

variable "ami" {
  description = "Enter the ami id for your instance"
  type        = string
}

variable "instance_type" {
  description = "Choose instance type"
  type        = string
}

variable "name" {
  description = "Name of your instance"
  type        = string
}

variable "bucket_name" {
  description = "Name of the s3 bucket you want to create"
  type        = string
}