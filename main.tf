provider "azurerm" {
  features {}
}

module "resource_group" {
  source  = "app.terraform.io/suncor-demo/resource-group/azure"
  version = "1.0.0"

  bill_indicator_tag = "test1"
  company_code_tag = "test1"
  consumer_org1_tag = "test1"
  consumer_org2_tag = "test1"
  env_tag = "test1"
  region = "westus2"
  rg = "test1"
  support_stat_tag = "test1"
}

module "network" {
  source  = "app.terraform.io/suncor-demo/network/azure"
  version = "1.0.0"

  resource_group_name = "test1"
}
