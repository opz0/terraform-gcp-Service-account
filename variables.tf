variable "names" {
  type        = list(string)
  default     = []
  description = "Name of the resource. Provided by the client when the resource is created. "
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "extra_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the resource."
}

variable "managedby" {
  type        = string
  default     = "info@cypik.com"
  description = "ManagedBy, e.g. 'info@cypik.com'."
}

variable "repository" {
  type        = string
  default     = "https://github.com/cypik/terraform-google-service-account"
  description = "Terraform current module repo"
}

variable "description" {
  type        = string
  default     = "ManagedBy, 'cypik' "
  description = " (Optional) A text description of the service account. "
}

variable "public_key_type" {
  type        = string
  default     = "TYPE_X509_PEM_FILE"
  description = " (Optional) The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format."
}

variable "private_key_type" {
  type        = string
  default     = "TYPE_GOOGLE_CREDENTIALS_FILE"
  description = "(Optional) The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format."
}

variable "key_algorithm" {
  type        = string
  default     = "KEY_ALG_RSA_2048"
  description = " (Optional) The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm. "
}

variable "keepers" {
  type        = map(string)
  default     = null
  description = "Arbitrary map of values that, when changed, will trigger a new key to be generated."
}

variable "roles" {
  type        = list(string)
  default     = []
  description = "Common roles to apply to all service accounts, project=>role as elements."
}

variable "grant_billing_role" {
  type        = bool
  default     = false
  description = "Grant billing user role."
}

variable "billing_account_id" {
  type        = string
  default     = ""
  description = "If assigning billing role, specificy a billing account (default is to assign at the organizational level)."
}

variable "grant_xpn_roles" {
  type        = bool
  default     = true
  description = "Grant roles for shared VPC management."
}

variable "org_id" {
  type        = string
  default     = ""
  description = "Id of the organization for org-level roles."
}

variable "generate_keys" {
  type        = bool
  default     = false
  description = "Generate keys for service accounts."
}

variable "display_name" {
  type        = string
  default     = "Terraform-managed service account"
  description = "Display names of the created service accounts (defaults to 'Terraform-managed service account')"
}

variable "descriptions" {
  type        = list(string)
  default     = []
  description = "List of descriptions for the created service accounts (elements default to the value of `description`)"
}