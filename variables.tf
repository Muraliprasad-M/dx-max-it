variable "region" {
  default = "ap-south-1"
}

variable "account_a_role" {}
variable "account_b_role" {}

variable "dx_connection_id_1" {}
variable "dx_connection_id_2" {}

variable "vlan_1" {}
variable "vlan_2" {}

variable "on_prem_asn" {}

variable "amazon_bgp_ip_1" {}
variable "customer_bgp_ip_1" {}

variable "amazon_bgp_ip_2" {}
variable "customer_bgp_ip_2" {}

variable "dxgw_asn" {
  default = 64512
}

variable "tgw_id" {}

variable "allowed_prefixes" {
  type = list(string)
}
