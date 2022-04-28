
output "frontend_private_ipv4_addr" {
  value = digitalocean_droplet.frontend.ipv4_address_private
}

output "frontend_ipv4_addr" {
  value = digitalocean_droplet.frontend.ipv4_address
}

output "frontend_ipv6_addr" {
  value = digitalocean_droplet.frontend.ipv6_address
}

output "frontend_price" {
  value = digitalocean_droplet.frontend.price_monthly
}

output "frontend_volumes" {
  value = digitalocean_droplet.frontend.volume_ids
}

output "backend_private_ipv4_addr" {
  value = digitalocean_droplet.backend.ipv4_address_private
}

output "backend_ipv4_addr" {
  value = digitalocean_droplet.backend.ipv4_address
}

output "backend_ipv6_addr" {
  value = digitalocean_droplet.backend.ipv6_address
}

output "backend_price" {
  value = digitalocean_droplet.backend.price_monthly
}

output "backend_volumes" {
  value = digitalocean_droplet.backend.volume_ids
}

output "bepartofit_private_ipv4_addr" {
  value = digitalocean_droplet.bepartofit.ipv4_address_private
}

output "bepartofit_ipv4_addr" {
  value = digitalocean_droplet.bepartofit.ipv4_address
}

output "bepartofit_ipv6_addr" {
  value = digitalocean_droplet.bepartofit.ipv6_address
}

output "bepartofit_price" {
  value = digitalocean_droplet.bepartofit.price_monthly
}

output "bepartofit_volumes" {
  value = digitalocean_droplet.bepartofit.volume_ids
}

output "static_content_private_ipv4_addr" {
  value = digitalocean_droplet.static_content.ipv4_address_private
}

output "static_content_ipv4_addr" {
  value = digitalocean_droplet.static_content.ipv4_address
}

output "static_content_ipv6_addr" {
  value = digitalocean_droplet.static_content.ipv6_address
}

output "static_content_price" {
  value = digitalocean_droplet.static_content.price_monthly
}

output "static_content_volumes" {
  value = digitalocean_droplet.static_content.volume_ids
}

output "database_private_ipv4_addr" {
  value = digitalocean_droplet.database.ipv4_address_private
}

output "database_ipv4_addr" {
  value = digitalocean_droplet.database.ipv4_address
}

output "database_ipv6_addr" {
  value = digitalocean_droplet.database.ipv6_address
}

output "database_price" {
  value = digitalocean_droplet.database.price_monthly
}

output "database_volumes" {
  value = digitalocean_droplet.database.volume_ids
}