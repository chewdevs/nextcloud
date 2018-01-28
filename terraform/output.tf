output "nextcloud_address" {
    value = "${openstack_compute_instance_v2.nextcloud.access_ip_v4}"
}
