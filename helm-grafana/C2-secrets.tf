resource "kubernetes_secret" "smtp_secret" {
    metadata {
        name = "grafana-smtp-secret"
        namespace = var.namespace
    }
    data = {
        user = var.email_address
        password = var.email_password_16_digits
    }
    depends_on = [ kubernetes_namespace_v1.namespace ]
}