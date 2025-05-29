# locals {
#   panels = [
#     {
#       id      = 1
#       title   = "CPU Usage"
#       type    = "timeseries"
#       gridPos = { x = 0, y = 0, w = 12, h = 8 }
#       expr    = "node_cpu_seconds_total{mode=\"idle\", environment=\"$environment\"}"
#       refId   = "A"
#     },
#     {
#       id      = 2
#       title   = "Memory Available"
#       type    = "timeseries"
#       gridPos = { x = 12, y = 0, w = 12, h = 8 }
#       expr    = "node_memory_MemAvailable_bytes{environment=\"$environment\"}"
#       refId   = "B"
#     },
#     {
#       id      = 3
#       title   = "Disk IO"
#       type    = "timeseries"
#       gridPos = { x = 0, y = 8, w = 12, h = 8 }
#       expr    = "node_disk_io_time_seconds_total{environment=\"$environment\"}"
#       refId   = "C"
#     }
#   ]
# }
