terraform {
    required_providers {
    grafana = {
        source  = "grafana/grafana"
        version = "3.25.0"
    }
    }
}

provider "grafana" {
    # Configuration options
    url = "http://${var.grafana_url}"
    auth = var.grafana_auth_token
}
