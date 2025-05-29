# resource "grafana_dashboard" "main_dashboard" {
#   folder      = grafana_folder.folder.id
#   config_json = jsonencode({
#     title         = "System Monitoring"
#     uid           = "sys-monitor"
#     schemaVersion = 36
#     version       = 1

#     templating = {
#       list = [
#         {
#           name     = "environment"
#           type     = "custom"
#           label    = "Environment"
#           query    = "dev,staging,production"
#           current  = {
#             text  = "dev"
#             value = "dev"
#           }
#         }
#       ]
#     }

#     panels = [
#       for panel in local.panels : {
#         id      = panel.id
#         title   = panel.title
#         type    = panel.type
#         gridPos = panel.gridPos
#         datasource = {
#           type = "prometheus"
#           uid  = "your-prometheus-uid"
#         }
#         targets = [
#           {
#             expr         = panel.expr
#             refId        = panel.refId
#             legendFormat = "{{instance}}"
#           }
#         ]
#       }
#     ]
#   })
# }
