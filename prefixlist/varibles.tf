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
