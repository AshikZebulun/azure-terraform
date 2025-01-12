# module "aro_cluster" {
#   source                   = "app.terraform.io/az/aro/module"
#   version                  = "1.0.9"
#   cluster_location         = "uks"
#   cluster_environment      = "dev"
#   cluster_count            = 1
#   vnet_cidr_block          = "10.0.0.0/20"
#   master_subnet_cidr_block = "10.0.0.0/23"
#   worker_subnet_cidr_block = "10.0.2.0/23"
#   spn_display_name         = "aro-service-principal"
#   spn_owners               = ["97b509a9-b4dc-4fc9-9748-dd62dea3278a"]
#   cluster_version          = "4.14.16"
#   cluster_profile          = "Public"
# }