variable "name" {
  description = "The name of the IAM Role."
  type        = string
}

variable "path" {
  description = "The path to the IAM Role."
  type        = string
  default     = "/"
}

variable "description" {
  description = "The description of the IAM Role."
  type        = string
  default     = "This IAM Role generated by Terraform."
}

variable "force_detach_policies" {
  description = "Forcibly detach the policy of the role."
  type        = bool
  default     = false
}

variable "policy_arn" {
  description = "Attache the policies to the IAM Role."
  type        = list(any)
}

variable "depend_on" {
  type    = any
  default = null
}

variable "tags" {
  description = "The tags of the IAM Role."
  type        = map(string)
}
