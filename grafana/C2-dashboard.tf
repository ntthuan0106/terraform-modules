resource "grafana_folder" "folder" {
  title = var.folder_name
}
# resource "grafana_dashboard" "dashboard" {
#   folder = grafana_folder.folder.id
#   config_json = 
# }