variable "environment" {
  description = "Environment (dev, qa, prod)"
  type        = string
}

variable "project" {
  description = "Project/application name"
  type        = string
}

variable "owner" {
  description = "Owner/team name"
  type        = string
}

variable "cost_center" {
  description = "Cost center name"
  type        = string
}

variable "location" {
  description = "resource region/location"
  type        = string
}
