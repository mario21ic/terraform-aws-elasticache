provider "aws" {
  region = "${var.region}"
}

resource "aws_elasticache_cluster" "ec" {
  cluster_id           = "ec-${var.name}"
  engine               = "memcached"
  node_type            = "${var.node_type}"
  port                 = "${var.port}"
  num_cache_nodes      = "${var.num_cache_nodes}"
  parameter_group_name = "${var.parameter_group_name}"

  subnet_group_name    = "${aws_elasticache_subnet_group.sn_group.name}"
  security_group_ids   = ["${aws_security_group.sg_ec.id}"]
}

resource "aws_elasticache_subnet_group" "sn_group" {
  name = "subnet-${var.name}"
  subnet_ids = "${var.subnets_id}"
  description = "Allow subnets availability to elasticache"
}

resource "aws_security_group" "sg_ec" {
  name        = "sg_ec_${var.name}"
  description = "Allow request to elasticache ${var.name}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = "${var.port}"
    to_port     = "${var.port}"
    protocol    = "tcp"
    security_groups = ["${var.security_group_access}"]
  }
}
