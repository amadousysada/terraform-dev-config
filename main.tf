# Configure the Hetzner provider
provider "hcloud" {
  token = var.hcloud_token
}

# Create a new Hetzner Cloud server
resource "hcloud_server" "amadousysada_web" {
  name = "asad"
  server_type = "cx11"
  image = "debian-11"
  ssh_keys = [
    "fedora-public-ssh-key"
  ]
  location = "nbg1"
}

# Output the server's IP address
output "ip_address" {
  value = hcloud_server.amadousysada_web.ipv4_address
}
