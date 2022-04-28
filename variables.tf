variable "do_token" {
  description = "DigitalOcean token"
  sensitive = true
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key directory (e.g. `/secrets`)"
  default = "ags-digital-ssh-key.pub"
  sensitive = true
}

variable "slack_channel" {
    type = string
    description = "Slack channel to alert"
}

variable "slack_hook" {
  type = string
  description = "Webhook for incomming messages"
  sensitive = true
}

variable "ubuntu_image" {
  description = "Ubuntu Image to use"
  default     = "ubuntu-20-04-x64"
}

variable "do_region" {
  description = "Region to deploy"
  default = "nyc3"
}

variable "droplet_size_x1" {
  description = "Size for small droplet"
  default = "s-2vcpu-2gb"
}

variable "droplet_size_x2" {
  description = "Size for medium droplet"
  default = "s-2vcpu-4gb"
}