region = "ap-south-1"

account_a_role = "arn:aws:iam::111111111111:role/TerraformHubRole"
account_b_role = "arn:aws:iam::222222222222:role/TerraformSpokeRole"

dx_connection_id_1 = "dxcon-abc123"
dx_connection_id_2 = "dxcon-def456"

vlan_1 = 101
vlan_2 = 102

on_prem_asn = 65000

amazon_bgp_ip_1   = "169.254.10.1/30"
customer_bgp_ip_1 = "169.254.10.2/30"

amazon_bgp_ip_2   = "169.254.20.1/30"
customer_bgp_ip_2 = "169.254.20.2/30"

tgw_id = "tgw-0abc123xyz"

allowed_prefixes = [
  "10.0.0.0/8",
  "172.16.0.0/12"
]
