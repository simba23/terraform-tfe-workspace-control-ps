# Azure Demo

resource "tfe_workspace" "azure_terraform_demo_setup_ps" {
  name           = "azure-terraform-demo-ps"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "simba23/terraform-azure-demo-ps"
    branch         = "main"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "azure_subscription_tf_id" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.azure_subscription_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Azure Subscription ID"
}

resource "tfe_variable" "azure_client_tf_id" {
  key          = "ARM_CLIENT_ID"
  value        = var.azure_client_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Azure Client ID"
}

resource "tfe_variable" "azure_tenant_tf_id" {
  key          = "ARM_TENANT_ID"
  value        = var.azure_tenant_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Azure Tenant ID"
}

resource "tfe_variable" "azure_client_secret_tf" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.azure_client_secret
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Azure Client Secret"
  sensitive    = true
}

resource "tfe_variable" "azure_appId_tf" {
  key          = "appId"
  value        = var.appId
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Application ID"
}

resource "tfe_variable" "azure_password_tf" {
  key          = "password"
  value        = var.password
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_ps.id
  description  = "Client Password"
  sensitive    = true
}
