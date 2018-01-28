resource "openstack_compute_keypair_v2" "vbox_linux" {
  name = "vbox_linux"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "openstack_blockstorage_volume_v2" "nextcloud_data" {
    name = "nextcloud_data"
    size = 30
}

resource "openstack_compute_instance_v2" "nextcloud" {
    name = "nextcloud"
    image_name = "Ubuntu 16.04"
    flavor_name = "vps-ssd-1"
    key_pair = "${openstack_compute_keypair_v2.vbox_linux.name}"

    user_data =  <<-EOF
                  #cloud-config
                  package_update: true
                  package_upgrade: true
                  packages:
                  - python
                  EOF

    network {
      name = "Ext-Net"
    }
}

resource "openstack_compute_volume_attach_v2" "attach_nextcloud_data" {
    instance_id = "${openstack_compute_instance_v2.nextcloud.id}"
    volume_id = "${openstack_blockstorage_volume_v2.nextcloud_data.id}"
}
