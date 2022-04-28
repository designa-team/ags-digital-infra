resource "digitalocean_ssh_key" "default" {
  name       = "ags-digital-ssh-key"
  public_key = file(var.ssh_public_key_path)
}