# @summary An ordinary managed node: one file from a module, and the agent itself.
#
# The content comes from puppet:///modules/, so with static catalogs the agent
# fetches it from its server by the code_id the catalog was built from.
# openvox_agent looks after the agent and its service as data/common.yaml says;
# the servers get it from openvox_server instead.
class role::agent {
  include openvox_agent

  file { '/etc/motd':
    ensure => file,
    source => 'puppet:///modules/role/motd',
  }
}
