output "grafana_external_hostname" {
  value = data.kubernetes_service_v1.grafana_service.status[0].load_balancer[0].ingress[0].hostname
}


