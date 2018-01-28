variable "os_tenant_name" {
  description = "Tenant or Project Openstack"
}

variable "os_region" {
  description = "Openstack Region"
}

variable "os_domain_name" {
  description = "Openstack Domain Name for Keystone v3"
}

variable "os_user_name" {
  description = "User to use to authenticate"
}

variable "os_password" {
  description = "password associated with openstack user"
}
