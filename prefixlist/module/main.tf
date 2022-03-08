variable "prefix_list_name" {
  type = string
}
variable "prefix_list_address_family" {
  type    = string
  default = "IPv4"
}
variable "prefix_list_max_entries" {
  type    = number
  default = 20
}
variable "prefix_list_tags" {
  type = map(string)
}
variable "prefix_list_cidrs" {
  type    = list(map(string))
  default = []
}

resource "aws_ec2_managed_prefix_list" "example" {
  name           = var.prefix_list_name
  address_family = var.prefix_list_address_family
  max_entries    = var.prefix_list_max_entries

  dynamic "entry" {
    for_each = var.prefix_list_cidrs

    content {
      cidr        = entry.value["cidr"]
      description = entry.value["description"]
    }

  }

  tags = var.prefix_list_tags
}