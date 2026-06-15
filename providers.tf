terraform {
  required_version = ">= 1.5.0"
  required_providers {
    fabric = {
      source  = "microsoft/fabric"
      version = ">= 0.1.0" # Ensure you use the latest verified version
    }
  }
}

provider "fabric" {
  # Authentication can be handled via environment variables or Service Principal
}
