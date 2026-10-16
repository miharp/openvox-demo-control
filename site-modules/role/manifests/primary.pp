# @summary The OpenVox Server: certificate authority and catalogs.
#
# ovadm::install built the host. openvox_server takes it over from a Puppet
# run without changing what ovadm set up.
class role::primary {
  include openvox_server
  include codavox::primary
}
