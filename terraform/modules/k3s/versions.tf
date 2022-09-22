terraform {
  required_version = ">= 1.3.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3, < 4.0.0"
    }
    ssh = {
      source  = "loafoe/ssh"
      version = ">= 2.2.1, < 3.0.0"
    }
  }
}
