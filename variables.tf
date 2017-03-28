variable "region" {
  description = "aws region"
  #default     = "ca-central-1"
}

variable "name" {
  description = "elasticache name"
}

variable "environment" {
  description = "component environment"
}

variable "node_type" {
  description = "node type"
  #default = "cache.t2.micro"
}

variable "num_cache_nodes" {
  description = "node number"
}

variable "parameter_group_name" {
  description = "node parameter groups"
}

variable "port" {
  description = "node port"
}

variable "security_group_access" {
  description = "security group id to allow access"
}

# vpc variables
variable "vpc_id" {
  description = "vpc id"
}
variable "subnets_id" {
  type = "list"
  description = "Subnets id"
}
