#dentro de main.tf se invoca el primer módulo

module "db"{
    source = "./modules/db"
    cloudflare_account_id = var.cloudflare_account_id
    database_name = var.database_name
}

module "page"{
    source = "./modules/page"
    cloudflare_account_id = var.cloudflare_account_id
    project_name =  var.project_name
    github_owner = var.github_owner
    github_repo = var.github_repo
    production_branch =  var.production_branch
    d1_databases = var.d1_databases
}

