resource "digitalocean_volume" "volume_static_content" {
  region                  = var.do_region
  name                    = "volume-static-content"
  size                    = 160
  initial_filesystem_type = "ext4"
  description             = "Volume for static content server"
}

resource "digitalocean_volume_attachment" "volume_static_content" {
  droplet_id = digitalocean_droplet.static_content.id
  volume_id  = digitalocean_volume.volume_static_content.id
}

resource "digitalocean_volume" "volume_bepartofit" {
  region                  = var.do_region
  name                    = "volume-bepartofit"
  size                    = 50
  initial_filesystem_type = "ext4"
  description             = "Volume for bepartofit server"
}

resource "digitalocean_volume_attachment" "volume_bepartofit" {
  droplet_id = digitalocean_droplet.bepartofit.id
  volume_id  = digitalocean_volume.volume_bepartofit.id
}

resource "digitalocean_volume" "volume_database" {
  region                  = var.do_region
  name                    = "volume-database"
  size                    = 20
  initial_filesystem_type = "ext4"
  description             = "Volume for database server"
}

resource "digitalocean_volume_attachment" "volume_database" {
  droplet_id = digitalocean_droplet.database.id
  volume_id  = digitalocean_volume.volume_database.id
}