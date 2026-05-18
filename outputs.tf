output "dxgw_id" {
  value = aws_dx_gateway.dxgw.id
}

output "vif1_id" {
  value = aws_dx_transit_virtual_interface.vif1.id
}

output "vif2_id" {
  value = aws_dx_transit_virtual_interface.vif2.id
}
