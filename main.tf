data "aws_dx_connection" "dx1" {
  provider = aws.hub
  id       = var.dx_connection_id_1
}

data "aws_dx_connection" "dx2" {
  provider = aws.hub
  id       = var.dx_connection_id_2
}

resource "aws_dx_gateway" "dxgw" {
  provider        = aws.hub
  name            = "central-dxgw"
  amazon_side_asn = var.dxgw_asn
}

resource "aws_dx_gateway_association" "tgw_assoc" {
  provider              = aws.hub
  dx_gateway_id         = aws_dx_gateway.dxgw.id
  associated_gateway_id = var.tgw_id

  allowed_prefixes = var.allowed_prefixes
}

resource "aws_dx_transit_virtual_interface" "vif1" {
  provider = aws.hub

  connection_id = data.aws_dx_connection.dx1.id
  name          = "transit-vif-1"
  vlan          = var.vlan_1

  address_family = "ipv4"

  bgp_asn          = var.on_prem_asn
  amazon_address   = var.amazon_bgp_ip_1
  customer_address = var.customer_bgp_ip_1

  dx_gateway_id = aws_dx_gateway.dxgw.id

  depends_on = [aws_dx_gateway_association.tgw_assoc]
}

resource "aws_dx_transit_virtual_interface" "vif2" {
  provider = aws.hub

  connection_id = data.aws_dx_connection.dx2.id
  name          = "transit-vif-2"
  vlan          = var.vlan_2

  address_family = "ipv4"

  bgp_asn          = var.on_prem_asn
  amazon_address   = var.amazon_bgp_ip_2
  customer_address = var.customer_bgp_ip_2

  dx_gateway_id = aws_dx_gateway.dxgw.id

  depends_on = [aws_dx_gateway_association.tgw_assoc]
}
