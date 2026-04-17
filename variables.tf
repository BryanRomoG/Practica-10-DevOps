variable cloudflare_api_token{
    type = string
    description = "Cloudflare API Token"
}

variable cloudflare_account_id{
    type = string
    description = "CloudFlare Account ID"
}

variable database_name{
    type = string
    description = "Database Name"
}


variable project_name{
    type = string
    description = "Project Name"
}

variable github_owner{
    type = string
    description = "Github Owner"
}

variable github_repo{
    type = string
    description = "Github Repo"
}

variable production_branch{
    type = string
    description = "Production Branch"
}

variable "d1_databases" {
    description = "map of d1 database bindings"
    type = map(string)
    default = {}
}