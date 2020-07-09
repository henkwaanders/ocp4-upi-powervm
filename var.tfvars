### Configure the OpenStack Provider
auth_url                    = "https://<HOSTNAME>:5000/v3/"
user_name                   = ""
password                    = ""
tenant_name                 = "ibm-default"
domain_name                 = "Default"
openstack_availability_zone = ""

### Configure the Instance details
network_name                = "network_name"
#network_type               = "SRIOV"
#scg_id                      = "df21cec9-c244-4d3d-b927-df1518672e87"
rhel_username               = "root"
#keypair_name                = "mykeypair"
public_key_file             = "data/id_rsa.pub"
private_key_file            = "data/id_rsa"
private_key                 = ""
public_key                  = ""
rhel_subscription_username  = ""
rhel_subscription_password  = ""
ansible_repo                = "ansible-2.9-for-rhel-8-ppc64le-rpms"
rhcos_kernel_options        = []
bastion                     = {instance_type    = "medium", image_id     = "daa5d3f4-ab66-4b2d-9f3d-77bd61774419"}
bootstrap                   = {instance_type    = "medium", image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 1}
master                      = {instance_type    = "medium", image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 3}
worker                      = {instance_type    = "large",  image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 2}


### OpenShift variables
openshift_install_tarball   = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.3/openshift-install-linux.tar.gz"
openshift_client_tarball    = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.3/openshift-client-linux.tar.gz"
raw_image = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/dependencies/rhcos/4.3/4.3.18/rhcos-4.3.18-metal.ppc64le.raw.gz"
kernel_image = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/dependencies/rhcos/4.3/4.3.18/rhcos-4.3.18-installer-kernel-ppc64le"
initramfs_image = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/dependencies/rhcos/4.3/4.3.18/rhcos-4.3.18-installer-initramfs.ppc64le.img"

release_image_override = ""

pull_secret_file = "data/pull-secret.txt"
cluster_domain = "example.com"
cluster_id_prefix = "test"
service_network = "172.20.0.0/16"

dns_forwarders      = "8.8.8.8"
mount_etcd_ramdisk  = false
installer_log_level = "info"
ansible_extra_options = "-v"

# If you forked/branched one of these repos change it here
#helpernode_repo = "https://github.com/RedHatOfficial/ocp4-helpernode"
#helpernode_tag = "master"
#install_playbook_repo = "https://github.com/ocp-power-automation/ocp4-playbooks"
#install_playbook_tag = "master"

storage_type    = "nfs"
volume_size = "300" # Value in GB
volume_storage_template = ""

#upgrade_image = ""
#upgrade_pause_time = "90"
#upgrade_delay_time = "600"

