variable "app_name" {
  description = "application name"
  type        = string
  default     = "ec"
}

variable "environment" {
  description = "Applicaiton environment"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}