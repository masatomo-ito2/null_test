variable "ATLAS_WORKSPACE_NAME" {}
variable "TF_VAR_ATLAS_WORKSPACE_NAME" {}
variable "API_KEY" {}

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

output "ws1" {
	value = terraform.workspace
}

output "ws2" {
	value = var.ATLAS_WORKSPACE_NAME
}

output "ws3" {
	value = var.TF_VAR_ATLAS_WORKSPACE_NAME
}

output "null_id" {
	value = null_resource.addition.id
}

output "api_key" {
	value = var.API_KEY
}

