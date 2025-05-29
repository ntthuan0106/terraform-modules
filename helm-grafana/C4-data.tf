data "kubernetes_service_v1" "grafana_service" {
  metadata {
    name = "monitoring-grafana"
    namespace = var.namespace
  }
  depends_on = [ helm_release.argo_cd ]
}