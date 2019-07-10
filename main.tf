variable "ATLAS_WORKSPACE_NAME" {}

resource "null_resource" "test" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "/bin/sh -c env"
  }
}

output "ws1" {
	value = terraform.workspace
}

output "ws2" {
	value = var.ATLAS_WORKSPACE_NAME
}
