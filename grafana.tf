resource "helm_release" "grafana" {
  name       = "grafana"
  namespace  = var.namespace

  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"

  depends_on = [
    helm_release.prometheus
  ]
}
