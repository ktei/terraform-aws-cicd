
variable "appname" {
  type = string
}

variable "environment" {
  type = string
}

variable "repo" {
  type = string
}

variable "branch" {
  type    = string
  default = "develop"
}

variable "cluster_name" {
  type    = string
  default = ""
}

variable "stages" {
  type = list(string)
  default = ["source", "build", "deploy"]
}

variable "codebuild_env_vars" {
  type = list(object(
    {
      name  = string
      type  = string
      value = string
  }))
  default = []
}

variable "codebuild_permissions" {
  type = list(object({
    actions   = list(string)
    resources = list(string)
  }))
  default = []
}
