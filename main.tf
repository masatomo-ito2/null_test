variable "API_KEY" {}

# Null test by masa
# Additional

resource "null_resource" "addition" {
  triggers = {
    build_number = timestamp()
  }

  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "printenv"
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

