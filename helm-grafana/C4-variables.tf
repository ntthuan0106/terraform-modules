variable "cluster_name" {
  type = string
}
variable "cluster_endpoint" {
  type = string
}
variable "cluster_ca" {
  type = string
}
variable "cluster_token" {
  
}
variable "namespace" {
  type = string
}

# Email donfig
variable "email_address" {
  type = string
}
variable "email_password_16_digits" {
  type = string
  sensitive = true
}
# Grafana admin
variable "adminUser" {
  type = string
  sensitive = true
}
variable "adminPassword" {
  type = string
  sensitive = true
}
