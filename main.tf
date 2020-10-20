//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
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