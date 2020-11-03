provider "azurerm" {
  features {}
}

module "keyvault" {
  source  = "app.terraform.io/suncor-demo/keyvault/azure"
  version = "1.0.1"

  bill_indicator_tag = "test1"
  company_code_tag = "test1"
  consumer_org1_tag = "test1"
  consumer_org2_tag = "test1"
  env_tag = "test1"
  region = "westus2"
  rg = "test1"
  support_stat_tag = "test1"
  tenant_id = "65b6be73-2104-4ff4-899f-5bff3196f3d1"
  user = "phil.thomson@arctiq.ca"
  vault_name = "test1"
}

module "postgres_private_endpoint" {
  source  = "app.terraform.io/suncor-demo/postgres-private-endpoint/azure"
  version = "1.0.0"

  auto_grow = "enabled"
  backup_days = 5
  bill_indicator_tag = "test"
  company_code_tag = "test"
  consumer_org1_tag = "test"
  consumer_org2_tag = "test"
  database_name = "test"
  database_sku = "GP_Gen5_2"
  database_storage = 102400
  database_username = "opsbobuser"
  database_version = 10
  db_ssl_enforcement = "enabled"
  env_tag = "test"
  geo_redundant = "enabled"
  priv_endpoint_name = "privendpoint01"
  region = "westus2"
  rg = "test1"
  server_name = "db01"
  subnet_name = "subnet01"
  support_stat_tag = "test"
  vnet_name = "vnet01"
  vnet_rg_name = "vnetrg"
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
