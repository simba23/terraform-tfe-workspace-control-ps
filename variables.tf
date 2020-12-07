# Terraform Enterprise Variables
variable "tfe_api_key" {
  description = "Terraform Enterprise/Cloud API used to connect and configure workspaces"
}
variable "org_name" {
  description = "Terraform Enterprise/Cloud Organization name to create the workspaces in"
}
variable "oauth_token_id" {
  description = "Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS)"
}

variable "appId" {
  description = "Application ID"
}

variable "password" {
  description = "Client Secret"
}

# Azure Variables
variable "azure_subscription_id" {
  description = "Azure Subscription ID"
}

variable "azure_client_id" {
  description = "Azure Client ID"
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID"
}

variable "azure_client_secret" {
  description = "Azure Clinet Secret"
}
