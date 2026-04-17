

variable cloudflare_account_id{
    type = string
    description = "Cloudflare Account ID"

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

