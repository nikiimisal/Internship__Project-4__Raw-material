output "namespace" {
  value = var.namespace
}

output "grafana_release" {
  value = helm_release.grafana.name
}

output "prometheus_release" {
  value = helm_release.prometheus.name
}
