output "elasticache_instance_id" {
  value = "${aws_elasticache_cluster.ec.id}"
}

output "elasticache_configuration_endpoint" {
  value = "${aws_elasticache_cluster.ec.configuration_endpoint}"
}

output "elasticache_subnet_group" {
  value = "${aws_elasticache_subnet_group.sn_group.name}"
}

