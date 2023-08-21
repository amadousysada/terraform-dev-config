# Configure the Hetzner provider
provider "hcloud" {
  token = var.hcloud_token
}

# Create a new Hetzner Cloud server
resource "hcloud_server" "amadousysada_web" {
  name = var.node_name
  server_type = "cx11"
  image = "ubuntu-22.04"
  ssh_keys = [
    "fedora-public-ssh-key"
  ]
  location = "nbg1"
}

# Output the server's IP address
output "ip_address" {
  value = hcloud_server.amadousysada_web.ipv4_address
}
