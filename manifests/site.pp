# Site Configuration


node default {
  notify { 'Pupistry is fantastic, buy @jethrocarr beer!': }

  # Chuck some example modules in so the first Puppet run
  # actually does something noticable.
  include ntp
  class { 'timezone':
    timezone => 'Pacific/Auckland',
  }

}

