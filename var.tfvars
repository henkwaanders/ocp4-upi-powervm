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
rhcos_kernel_options        = []
bastion                     = {instance_type    = "medium", image_id     = "daa5d3f4-ab66-4b2d-9f3d-77bd61774419"}
bootstrap                   = {instance_type    = "medium", image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 1}
master                      = {instance_type    = "medium", image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 3}
worker                      = {instance_type    = "large",  image_id     = "468863e6-4b33-4e8b-b2c5-c9ef9e6eedf4",  "count"   = 2}


### OpenShift variables
openshift_install_tarball   = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.4/openshift-install-linux.tar.gz"
openshift_client_tarball    = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable-4.4/openshift-client-linux.tar.gz"

#release_image_override = ""

pull_secret_file = "data/pull-secret.txt"
cluster_domain = "example.com"
cluster_id_prefix = "test"
service_network = "172.20.0.0./16"

dns_forwarders      = "8.8.8.8; 8.8.4.4"
mount_etcd_ramdisk  = false
installer_log_level = "info"
ansible_extra_options = "-v"

helpernode_tag = "master"
install_playbook_tag = "master"

storage_type    = "nfs"
volume_size = "300" # Value in GB
volume_storage_template = ""

#upgrade_image = ""
#upgrade_pause_time = "90"
#upgrade_delay_time = "600"

