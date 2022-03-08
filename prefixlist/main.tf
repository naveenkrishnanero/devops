provider "aws" {
  region  = "us-east-1"
}

module "sample1" {

  source            = "./module/"
  prefix_list_name              = var.prefix_list_name
  prefix_list_address_family    = var.prefix_list_address_family
  prefix_list_max_entries       = var.prefix_list_max_entries
  prefix_list_cidrs = var.prefix_list_cidrs
  prefix_list_tags  = var.prefix_list_tags
}

module "sample2" {

  source                     = "./module/"
  prefix_list_name           = "testlist2"
  prefix_list_address_family = "IPv4"
  prefix_list_max_entries    = 30
  prefix_list_tags = {
    "name" = "testtag"
  }
  prefix_list_cidrs = [
    { "cidr" : "172.0.0.0/16", "description" : "d1" },
  { "cidr" : "198.0.0.0/16", "description" : "d2" }]
}

