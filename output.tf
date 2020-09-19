/*
output "cluster_instance_ids" {
  value = "${module.mysql-replication-slave.ids}"
}

output "cluster_private_ips" {
  value = "${module.mysql-replication-slave.private_ips}"
}
*/
output "mysql_shell_public_ip" {
  value = "${module.mysql-shell.public_ip}"
}

output "mysql_shell_private_ip" {
  value = "${module.mysql-shell.private_ip}"
}

output "mysql_innodb_cluster_ips" {
  value = "${module.mysql-innodb-cluster.private_ip}"
}