terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

resource "cloudflare_pages_project" "mi_pagina" {
  account_id        = var.cloudflare_account_id
  name              = var.project_name
  production_branch = "main"

  # indica que el codigo va a venir del github
  source {
    type = "github"
    config {
      owner                         = var.github_owner
      repo_name                     = var.github_repo
      production_branch             = var.production_branch
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
      preview_deployment_setting    = "all"
      preview_branch_includes       = ["*"]
      preview_branch_excludes       = []
    }
  }

  deployment_configs {
    production {
      d1_databases = var.d1_databases
    }
    preview {
      d1_databases = var.d1_databases
    }
  }
}
