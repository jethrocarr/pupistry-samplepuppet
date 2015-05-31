# Site Configuration


node default {

  # Include the Pupistry helper module. You should load this on all masterless
  # hosts, it fixes pluginsync for masterless and setups Pupistry background
  # daemon to ensure you keep getting new artifacts applied.
  include pupistry

  # Show off a bit ;-)
  notify { 'Pupistry is fantastic, buy @jethrocarr beer!': }

  # Chuck some example modules in so the first Puppet run
  # actually does something noticable.
  include ntp
  class { 'timezone':
    timezone => 'Pacific/Auckland',
  }

  # Example of Hiera override
  if (hiera('hiera_override_test', false) == true) {
    notify { 'Hiera is working correctly': }
  } else {
    notify { 'Hiera does not appear to be working correctly, possibly looking in wrong path': }
  }
}

node 'packer' {
  # This is another example node definition for a machine called 'packer', used
  # to demonstrate how to bake machines with the packer feature built into
  # Pupistry.

  include pupistry

  file { '/root/packer_built':
    ensure  => present,
    content => 'This machine was build using Packer and Pupistry',
  }

  notify { 'Applying manifests intended for default packer nodes': }
}
