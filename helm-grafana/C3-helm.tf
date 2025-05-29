resource "helm_release" "argo_cd" {
  name       = "monitoring"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"

  set {
    name = "adminUser"
    value = var.adminUser
  }
  set {
    name = "adminPassword"
    value = var.adminPassword
  }
  namespace     = var.namespace
  values        = [file("${path.module}/values/values.yml")]
  force_update  = true
  recreate_pods = true
  reuse_values  = true

  depends_on = [
    kubernetes_namespace_v1.namespace,
    kubernetes_secret.smtp_secret
  ]
}
