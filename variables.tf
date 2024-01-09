variable "host" {
  type = string
  description = "Operating system host name"
}

variable "ssh_key" {
  type        = string
  default     = "~/.ssh/mtcazurekey"
  description = "SSH key"
}