variable "table_name" {
  description = "The table name for the Terraform state lock."
  default     = "terraform-state-lock"
  type        = string
}

variable "project_alias" {
  description = "The AWS account alias."
  type        = string
}

variable "bucket_purpose" {
  description = "The identification of the bucket's purpose."
  default     = "terraform-state"
  type        = string
}

variable "region" {
  description = "The AWS region the account will be bootstrapped in."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the table."
  type        = map(string)
  default     = {}
}
