# Create a firewall
resource "civo_firewall" "firewall" {
  name = "${var.cluster_name_prefix}firewall"
}

# Create a firewall rule
resource "civo_firewall_rule" "kubernetes" {
  firewall_id = civo_firewall.firewall.id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = var.kuberentes_api_access
  label       = "kubernetes-api-server"
  action      = "allow"
  direction   = "ingress"
}
