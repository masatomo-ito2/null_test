resource "null_resource" "test" {

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "/bin/sh -c env"
  }
}

output "ws" {
	value = terraform.workspace
}
