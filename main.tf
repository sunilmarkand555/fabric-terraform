variable "fabric_capacity_id" {
  type        = string
  description = "The ID of your existing Microsoft Fabric Capacity"
}

# 1. Create the Fabric Workspace
resource "fabric_workspace" "example_workspace" {
  display_name = "Finance Data Platform"
  description  = "Managed via Terraform and GitHub Actions"
  capacity_id  = var.fabric_capacity_id
}

# 2. Create the Lakehouse within the Workspace
resource "fabric_lakehouse" "example_lakehouse" {
  workspace_id = fabric_workspace.example_workspace.id
  display_name = "Finance_Lakehouse"
  description  = "Primary Delta Lake storage"
}
