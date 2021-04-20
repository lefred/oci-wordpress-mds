
locals {
    db_system_id = var.existing_mds_instance_id ==  "" ? oci_mysql_mysql_db_system.MDSinstance[0].id : var.existing_mds_instance_id
}

resource "oci_mysql_mysql_db_system" "MDSinstance" {
    admin_password = var.admin_password
    admin_username = var.admin_username
    availability_domain = var.availability_domain
    compartment_id = var.compartment_ocid
    configuration_id = var.configuration_id
    shape_name = var.mysql_shape
    subnet_id = var.subnet_id
    data_storage_size_in_gb = var.mysql_data_storage_in_gb
    display_name = var.display_name

    count = var.existing_mds_instance_id == "" ? 1 : 0

    is_highly_available = var.deploy_ha
}

data "oci_mysql_mysql_db_system" "MDSinstance_to_use" {
    db_system_id =  local.db_system_id
}
