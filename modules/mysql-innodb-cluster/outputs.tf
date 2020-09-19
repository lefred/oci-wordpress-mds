
output "private_ip" {
  value = "${oci_core_instance.MDSinstance.*.private_ip}"
}