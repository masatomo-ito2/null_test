variable "var1" {
	default = "foo"
}

resource "null_resource" "test" {

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "touch file"
  }
}

output "sample_var" {
	value = var.var1
}

output "ws" {
	value = terraform.workspace
}
