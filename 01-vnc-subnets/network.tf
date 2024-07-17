# VCN
resource "oci_core_virtual_network" "VCN_produccion" { # definir el recurso de la red virtual (VCN)
  cidr_block     = var.VCN-CIDR # definir el bloque CIDR de la VCN
  dns_label      = "vcnproduccion" # definir la etiqueta DNS de la VCN
  compartment_id = oci_identity_compartment.produccion # definir el OCID del compartimento
  display_name   = "vcnproduccion" # definir el nombre de la VCN
}