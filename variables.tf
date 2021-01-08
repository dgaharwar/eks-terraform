#===============================================================================
# Global Varaibles
#===============================================================================
variable "aws_region" {
  default = "us-east-2"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

#===============================================================================
# Cluster Specs
#===============================================================================

variable "cluster_name" {
  type    = string
  default = "cmp-eks-dev"
}

variable "cluster_version" {
  default = "1.18"
}

#=====================NodeGroup 1========================#
variable "cmp_primary_node_group" {
  description = "Name of Node Group"
  default     = "cmp-primary-ng"
}

variable "primary_nodes_disk_size" {
  default = 20
}
variable "desired-capacity-primary" {
  default     = 1
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size-primary" {
  default     = 5
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size-primary" {
  default     = 1
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "cmp_primary_instance_type" {
  description = "instance type of worker"
  default     = "t3.medium"
}


#=====================NodeGroup 2========================#
#variable "cmp_secondary_node_group" {
#  description = "Name of Node Group"
#  default     = "cmp-secondary-ng"
#}

#variable "secondary_nodes_disk_size" {
#  default = 20
#}

#variable "desired-capacity-secondary" {
#  default     = 1
#  type        = string
#  description = "Autoscaling Desired node capacity"
#}

#variable "max-size-secondary" {
#  default     = 5
#  type        = string
#  description = "Autoscaling maximum node capacity"
#}

#variable "min-size-secondary" {
#  default     = 1
#  type        = string
#  description = "Autoscaling Minimum node capacity"
#}

#variable "cmp_secondary_instance_type" {
#  description = "instance type of worker"
#  default     = ["t3.medium"]
#}
#==========================================================#


variable "ec2_ssh_key" {
  description = "ssh key name for ec2 instance"
  default     = "k8s-jump"
}

#===============================================================================
# Network
#===============================================================================

variable "vpc_id" {
  description = "vpc id"
  type        = string
  default     = "vpc-015e2338b8"
}


variable "public_subnet_1" {  
  description = "public subnet id in  VPC"
  default     = "subnet-0c39c8asd76e5"
}

variable "public_subnet_2" {  
  description = "public subnet id in  VPC"
  default     = "subnet-057ea7adadc8a6"
}

variable "private_subnet_1" {
  description = "private subnet id in  VPC"
  default     = "subnet-0f6301f5sdfsf3f"
}

variable "private_subnet_2" {
  description = "private subnet id in  VPC"
  default     = "subnet-0aa31wt34te17e67"
}

variable "vpn_cidrs" {
  description = "Access from VPN"
  default     = "10.0.0.0/8"
}

#This is for Egress
variable "public_anywhere" {
  description = "Public access"
  default     = "0.0.0.0/0"
}
