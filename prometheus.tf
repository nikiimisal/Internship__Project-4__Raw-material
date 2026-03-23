resource "helm_release" "prometheus" {
  name       = "prometheus"
  namespace  = var.namespace

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"

  wait    = false
  timeout = 600

  set {
    name  = "server.persistentVolume.enabled"
    value = "false"
  }

  set {
    name  = "alertmanager.enabled"
    value = "false"
  }

  depends_on = [
    kubernetes_namespace.monitoring
  ]
}
