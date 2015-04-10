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

}

