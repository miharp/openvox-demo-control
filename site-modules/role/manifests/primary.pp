# @summary The OpenVox Server: certificate authority, catalogs, and codavox's publisher.
#
# ovadm::install built the host. openvox_server takes it over from a Puppet
# run without changing what ovadm set up. codavox::primary publishes the code
# r10k deploys and points this server at it once the first version is in.
class role::primary {
  include openvox_server
  include codavox::primary
}
