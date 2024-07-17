# All variables used by the automation.

variable "tenancy_ocid" {} # definir el OCID del tenancy
variable "user_ocid" {} # definir el OCID del usuario
variable "fingerprint" {} # definir la huella digital
variable "private_key_path" {} # definir la ruta de la clave privada
variable "compartment_ocid" {} # definir el OCID del compartment
variable "region" {} # definir la región
variable "availablity_domain_name" { # definir el nombre del dominio de disponibilidad
  default = "" # definir el valor por defecto
}

variable "VCN-CIDR" { # definir el CIDR de la VCN
  default = "10.0.0.0/16" # definir el valor por defecto
}

variable "Subnet-CIDR" { # definir el CIDR de la subred
  default = "10.0.1.0/24" # definir el valor por defecto
}

