

resource "oci_mysql_mysql_db_system" "MDSinstance" {
    #Required
    admin_password = var.admin_password
    admin_username = var.admin_username
    availability_domain = var.availability_domain
    compartment_id = var.compartment_ocid
    configuration_id = var.mysql_configuration_id
    shape_name = var.mysql_shape_name
    subnet_id = var.subnet.id

    display_name = var.display_name

}
