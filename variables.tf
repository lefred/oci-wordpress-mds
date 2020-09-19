variable "tenancy_ocid" {
  description = "Tenancy's OCID"
}

variable "user_ocid" {
  description = "User's OCID"
  default = ""
}

variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
}

variable "region" {
  description = "OCI Region"
}

variable "vcn" {
  description = "VCN Name"
  default     = "mysql_vcn"
}

variable "vcn_cidr" {
  description = "VCN's CIDR IP Block"
  default     = "10.0.0.0/16"
}

variable "fingerprint" {
  description = "Key Fingerprint"
  default     = ""
}

variable "dns_label" {
  description = "Allows assignment of DNS hostname when launching an Instance. "
  default     = ""
}

variable "label_prefix" {
  description = "To create unique identifier for multiple clusters in a compartment."
  default     = ""
}

variable "cluster_subnet_id" {
  description = "List of MySQL Shell subnets' id"
  default     = []
}

variable "cluster_subnet_id_priv" {
  description = "List of MySQL Priv subnets' id"
  default     = []
}

variable "node_display_name" {
  description = "The name of a MySQL InnoDB Cluster instance. "
  default     = "MySQLInnoDBClusterNode"
}

variable "node_image_id" {
  description = "The OCID of an image for a node instance to use. "
  default     = ""
}

variable "node_shape" {
  description = "Instance shape to use for master instance. "
  default     = "VM.Standard1.1"
}

variable "mysql_root_password" {
  description = "Password of the MySQL 'root@localhost' account."
  default     = ""
}

variable "use_AD" {
  description = "Using different Availability Domain, by default use of Fault Domain"
  type        = bool
  default     = false
}

variable "number_of_nodes" {
  description = "Number of nodes in the cluster"
  default = 3
}

variable "clusteradmin_password" {
  description = "Password for the clusteradmin user able to connect from bastion/shell"
}

variable "cluster_name" {
  description = "MySQL InnoDB Cluster Name"
  default = "MyCluster"
}

variable "bastion_host" {
  description = "IP fo the bastion host"
  default = null
}

variable "ssh_authorized_keys_path" {
  description = "Public SSH keys path to be included in the ~/.ssh/authorized_keys file for the default user on the instance. DO NOT FILL WHEN USING REOSURCE MANAGER STACK!"
  default     = ""
}

variable "ssh_private_key_path" {
  description = "The private key path to access instance. DO NOT FILL WHEN USING RESOURCE MANAGER STACK!"
  default     = ""
}

variable "private_key_path" {
  description = "The private key path to pem. DO NOT FILL WHEN USING RESOURCE MANAGER STACK! "
  default     = ""
}

