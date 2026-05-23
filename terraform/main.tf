provider "github" {
  token = var.github_token
}

resource "github_repository" "repo" {
  name       = "ci-cd-project"
  visibility = "private"
  auto_init  = true
}
