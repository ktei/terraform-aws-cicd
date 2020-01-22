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
