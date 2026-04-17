terraform{
    required_providers{
        cloudflare = {
            source = "cloudflare/cloudflare"
            version = "~> 4.0"
        }
    }
}


provider "cloudflare" {
    api_token = var.cloudflare_api_token
}

#cuando son providers que no están definidos en hashicorp deben de estar definidos
#en todos los main