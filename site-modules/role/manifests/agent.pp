# @summary An ordinary managed node: one file from a module, which the screenshare changes.
#
# The content comes from puppet:///modules/, so with static catalogs the agent
# fetches it from its server by the code_id the catalog was built from.
class role::agent {
  file { '/etc/motd':
    ensure => file,
    source => 'puppet:///modules/role/motd',
  }
}
