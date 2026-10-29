terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0, < 4.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ldexercise-tfstate-prod-rg"
    storage_account_name = "ldexercisetfstateprod"
    container_name       = "tfstate"
    key                  = "production.terraform.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
}
