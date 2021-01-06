module "yum-elrepo" {
  source                       = "./modules/repository"
  name                         = "yum-elrepo"
  cookbook_team                = github_team.yum-elrepo.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-elrepo" {
  name        = "yum-elrepo"
  description = "yum-elrepo Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-elrepo-maintainer-1" {
  team_id  = github_team.yum-elrepo.id
  username = "ramereth"
  role     = "maintainer"
}
