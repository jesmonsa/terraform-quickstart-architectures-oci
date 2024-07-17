# VCN
resource "oci_core_virtual_network" "VCN_produccion" { # definir el recurso de la red virtual (VCN)
  cidr_block     = var.VCN-CIDR # definir el bloque CIDR de la VCN
  dns_label      = "vcnproduccion" # definir la etiqueta DNS de la VCN
  compartment_id = oci_identity_compartment.produccion.id # definir el OCID del compartimento
  display_name   = "vcnproduccion" # definir el nombre de la VCN
}

# Subnet
resource "oci_core_subnet" "WebSubnet" { # definir el recurso de la subred
  cidr_block        = var.Subnet-CIDR # definir el bloque CIDR de la subred
  display_name      = "WebSubnet" # definir el nombre de la subred
  dns_label         = "WebSubnetN1"   # definir la etiqueta DNS de la subred
  compartment_id    = oci_identity_compartment.produccion.id # definir el OCID del compartimento
  vcn_id            = oci_core_virtual_network.VCN_produccion.id # definir el OCID de la VCN
}