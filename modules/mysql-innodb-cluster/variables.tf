variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
}

variable "availability_domains" {
  description = "The Availability Domain of the instance. "
  default     = []
}

variable "display_name" {
  description = "The name of the instance. "
  default     = ""
}

variable "subnet_id" {
  description = "The OCID of the master subnet to create the VNIC in. "
  default     = ""
}

variable "shape" {
  description = "Instance shape to use for master instance. "
  default     = "VM.Standard2.1"
}

variable "admin_username" {
    description = "Username od the MDS admin account"
}


variable "admin_password" {
    description = "Password for the admin user for MDS"
}

