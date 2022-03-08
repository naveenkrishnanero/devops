prefix_list_name           = "testlist"
prefix_list_address_family = "IPv4"
prefix_list_max_entries    = 30
prefix_list_tags = {
  "name" = "testtag"
}
prefix_list_cidrs = [
  { "cidr" : "172.0.0.0/16", "description" : "d1" },
{ "cidr" : "198.0.0.0/16", "description" : "d2" }]
