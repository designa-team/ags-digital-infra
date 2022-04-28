
resource "digitalocean_vpc" "agsdigital" {
  name     = "ags-digital-vpc"
  region   = var.do_region
  ip_range = "10.10.10.0/24"
}

resource "digitalocean_floating_ip" "ip_frontend" {
  droplet_id = digitalocean_droplet.frontend.id
  region     = digitalocean_droplet.frontend.region
}
resource "digitalocean_floating_ip" "ip_backend" {
  droplet_id = digitalocean_droplet.backend.id
  region     = digitalocean_droplet.backend.region
}
resource "digitalocean_floating_ip" "ip_bepartofit" {
  droplet_id = digitalocean_droplet.bepartofit.id
  region     = digitalocean_droplet.bepartofit.region
}