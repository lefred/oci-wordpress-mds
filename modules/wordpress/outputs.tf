output "id" {
  value = oci_core_instance.WordPress.*.id
}

output "public_ip" {
  value = join(", ", oci_core_instance.WordPress.*.public_ip)
}

output "wordpress_user_name" {
  value = var.wp_name
}

output "wordpress_schema_name" {
  value = var.wp_schema
}

output "wordpress_host_name" {
  value = oci_core_instance.WordPress.*.display_name
}
