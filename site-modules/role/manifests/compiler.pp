# @summary A compiler: an OpenVox Server that builds catalogs, with its CA switched off.
#
# ovadm enrolled the host against the primary's CA. openvox_server keeps its
# CA switched off (node data).
class role::compiler {
  include openvox_server
}
