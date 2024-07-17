# Home Region Subscription DataSource
data "oci_identity_region_subscriptions" "home_region_subscriptions" { # definir el data source de las suscripciones de la región de inicio
  tenancy_id = var.tenancy_ocid # definir el OCID del tenancy

  filter { # definir el filtro
    name   = "is_home_region" # definir el nombre del filtro
    values = [true] # definir el valor del filtro
  }
}

# ADs DataSource
data "oci_identity_availability_domains" "ADs" { # definir el data source de los dominios de disponibilidad
  compartment_id = var.tenancy_ocid # definir el OCID del compartimento
}