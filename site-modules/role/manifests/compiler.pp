# @summary A compiler: an OpenVox Server that builds catalogs from the code codavox delivers.
#
# ovadm enrolled the host against the primary's CA. openvox_server keeps its CA
# switched off (node data); codavox::agent pulls each deploy from the primary,
# and codavox::server points this server at it.
class role::compiler {
  include openvox_server
  include codavox::agent
  include codavox::server
}
