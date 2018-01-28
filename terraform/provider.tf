provider "openstack" {
    auth_url = "https://auth.cloud.ovh.net/v3"
    tenant_name = "${var.os_tenant_name}"
    region = "${var.os_region}"
    domain_name = "${var.os_domain_name}"
    user_name = "${var.os_user_name}"
    password = "${var.os_password}"

    # alias = "ovh"
}
