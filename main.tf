# Configure the Hetzner provider
provider "hcloud" {
  token = "<your-hetzner-api-token>"
}

# Create a new Hetzner Cloud server
resource "hcloud_server" "example" {
  name = "example-server"
  server_type = "cx11"
  image = "ubuntu-20.04"
  ssh_keys = [
    "<your-public-ssh-key>"
  ]
  location = "nbg1"
}

# Output the server's IP address
output "ip_address" {
  value = hcloud_server.example.ipv4_address
}
