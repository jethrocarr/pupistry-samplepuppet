# Site Configuration


node default {

  # Include the Pupistry helper module. You should load this on all masterless
  # hosts, it fixes pluginsync for masterless and setups Pupistry background
  # daemon to ensure you keep getting new artifacts applied.
  include pupistry

  # Demo of the branch
  notify { 'You are running the "exampleofbranch" branch of the Puppet manifests! You can choose which branch you want to apply using `pupistry apply --environment X`': }

}

