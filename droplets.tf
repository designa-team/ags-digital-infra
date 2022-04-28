resource "digitalocean_droplet" "frontend" {
  image  = var.ubuntu_image
  name   = "frontend"
  region = var.do_region
  size   = var.droplet_size_x2
  monitoring = true
  ipv6 = true
  vpc_uuid = digitalocean_vpc.agsdigital.id
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_droplet" "backend" {
  image  = var.ubuntu_image
  name   = "backend"
  region = var.do_region
  size   = var.droplet_size_x2
  monitoring = true
  ipv6 = true
  vpc_uuid = digitalocean_vpc.agsdigital.id
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_droplet" "bepartofit" {
  image  = var.ubuntu_image
  name   = "bepartofit"
  region = var.do_region
  size   = var.droplet_size_x1
  monitoring = true
  ipv6 = true
  vpc_uuid = digitalocean_vpc.agsdigital.id
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_droplet" "static_content" {
  image  = var.ubuntu_image
  name   = "static-content"
  region = var.do_region
  size   = var.droplet_size_x1
  monitoring = true
  ipv6 = true
  vpc_uuid = digitalocean_vpc.agsdigital.id
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_droplet" "database" {
  image  = var.ubuntu_image
  name   = "database"
  region = var.do_region
  size   = var.droplet_size_x1
  monitoring = true
  ipv6 = true
  vpc_uuid = digitalocean_vpc.agsdigital.id
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
