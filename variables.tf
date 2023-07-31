# vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

# security variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "this ip address can ssh into ec2"
  type        = string
}

# rds variables
variable "database_snapshot_identifier" {
  default     = "arn:aws:rds:us-east-1:308134718221:snapshot:fleetcart-final-snapshot"
  description = "the database snapshot arn"
  type        = string
}

variable "database_instance_class" {
  default     = "db.t2.micro"
  description = "the database instance type"
  type        = string
}

variable "database_instance_identifier" {
  default     = "dev-rds-db"
  description = "the database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a standby db instance"
  type        = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:308134718221:certificate/876495c4-20ae-4723-b51d-b71b97219df1"
  description = "ssl certificate arn"
  type        = string
}

# sns topic variables
variable "operator_email" {
  default     = "olayusuf822@gmail.com"
  description = "a valid email address"
  type        = string
}

# variables for auto scaling group
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "this is asg launch template"
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-0efe5458081033de7"
  description = "id ami"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "the ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  default     = "myec2-eckey"
  description = "ec2 pair"
  type        = string
}

# route 53 variables
variable "domain_name" {
  default     = "oly22.com"
  description = "domain name"
  type        = string
}

variable "record_name" {
  default     = "www"
  description = "subdomain name"
  type        = string
}