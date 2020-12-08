variable "API_KEY" {}

# Null test by masa

resource "null_resource" "test" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "/bin/sh -c env"
  }
}

resource "null_resource" "addition" {
	provisioner "local-exec" {
		command = "/bin/sh -c hostname"
	}
}

output "null_id" {
	value = null_resource.addition.id
}

output "api_key" {
	value = var.API_KEY
}

