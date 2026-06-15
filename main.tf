variable "fabric_capacity_id" {
  type        = string
  description = "The ID of your existing Microsoft Fabric Capacity"
}

# 1. Create the Fabric Workspace
resource "fabric_workspace" "ws_finance" {
  display_name = "Finance Data Platform"
  description  = "Managed via Terraform and GitHub Actions"
}

# 2. Create the Lakehouse within the Workspace
resource "fabric_lakehouse" "lh_finance" {
  workspace_id = fabric_workspace.ws_finance.id
  display_name = "Finance_Lakehouse"
  description  = "Primary Delta Lake storage"
}
