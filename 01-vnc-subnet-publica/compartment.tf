resource "oci_identity_compartment" "produccion" { # definir el recurso del compartimento
  provider       = oci.homeregion # definir el proveedor
  name           = "produccion" # definir el nombre del compartimento
  description    = "compartment produccion" # definir la descripción del compartimento
  compartment_id = var.compartment_ocid # definir el OCID del compartimento padre

}