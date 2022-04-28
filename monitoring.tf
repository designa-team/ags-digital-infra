resource "digitalocean_monitor_alert" "cpu_alert" {
  alerts {
    slack {
      channel   = var.slack_channel
      url       = var.slack_hook
    }
  }
  window      = "10m"
  type        = "v1/insights/droplet/cpu"
  compare     = "GreaterThan"
  value       = 90
  enabled     = true
  entities    = [
      digitalocean_droplet.frontend.id,
      digitalocean_droplet.backend.id,
      digitalocean_droplet.bepartofit.id,
      digitalocean_droplet.static_content.id,
      digitalocean_droplet.database.id
      ]
  description = "Alert about CPU usage"
}

resource "digitalocean_monitor_alert" "memory_alert" {
  alerts {
    slack {
      channel   = var.slack_channel
      url       = var.slack_hook
    }
  }
  window      = "10m"
  type        = "v1/insights/droplet/memory_utilization_percent"
  compare     = "GreaterThan"
  value       = 90
  enabled     = true
  entities    = [
      digitalocean_droplet.frontend.id,
      digitalocean_droplet.backend.id,
      digitalocean_droplet.bepartofit.id,
      digitalocean_droplet.static_content.id,
      digitalocean_droplet.database.id
      ]
  description = "Alert about memory usage"
}

resource "digitalocean_monitor_alert" "disk_alert" {
  alerts {
    slack {
      channel   = var.slack_channel
      url       = var.slack_hook
    }
  }
  window      = "10m"
  type        = "v1/insights/droplet/disk_utilization_percent"
  compare     = "GreaterThan"
  value       = 90
  enabled     = true
  entities    = [
      digitalocean_droplet.frontend.id,
      digitalocean_droplet.backend.id,
      digitalocean_droplet.bepartofit.id,
      digitalocean_droplet.static_content.id,
      digitalocean_droplet.database.id
      ]
  description = "Alert about disk usage"
}

resource "digitalocean_monitor_alert" "bandwidth_alert" {
  alerts {
    slack {
      channel   = var.slack_channel
      url       = var.slack_hook
    }
  }
  window      = "10m"
  type        = "v1/insights/droplet/public_outbound_bandwidth"
  compare     = "GreaterThan"
  value       = 70
  enabled     = true
  entities    = [
      digitalocean_droplet.frontend.id,
      digitalocean_droplet.backend.id,
      digitalocean_droplet.bepartofit.id,
      digitalocean_droplet.static_content.id,
      digitalocean_droplet.database.id
      ]
  description = "Alert about bandwidth usage"
}