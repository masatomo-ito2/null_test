variable "API_KEY" {}

# Null test by masa
# Additional

resource "null_resource" "test" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "/bin/sh -c sleep 300"
  }
}

resource "null_resource" "addition" {
	provisioner "local-exec" {
		command = "/bin/sh -c hostname"
	}
}

resource "random_pet" "pet" {
	length = 5
}

output "pet" {
	value = random_pet.pet.id
}

output "null_id" {
	value = null_resource.addition.id
}

output "api_key" {
	value = var.API_KEY
}

