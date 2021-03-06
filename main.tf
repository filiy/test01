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

module "compute" {
  source  = "app.terraform.io/suncor-demo/compute/azure"
  version = "1.0.1"

  license_type = "Windows_Client"
  resource_group_name = "test1"
  vm_os_simple = "CentOS"
  vnet_subnet_id = "acctvnet"
  enable_ssh_key = "false"
  vm_size = "Standard_D4s_v3"
}
