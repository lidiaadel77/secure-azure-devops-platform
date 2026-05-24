variable "location" {
  description = "Azure region allowed by the Azure for Students policy."
  type        = string
  default     = "francecentral"
}

variable "project_name" {
  description = "Base name used for Azure resources."
  type        = string
  default     = "secure-devops"
}
