# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Box
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "devvm"
  
  # Bootstrap - as root
  config.vm.provision "shell", path: "root.sh"
  
  # Puppet - always run, to keep up-to-date
  config.vm.provision "puppet", run: "always"

  # Bootstrap - as 'vagrant' user, not root.  After puppet installs.
  config.vm.provision "shell", path: "vagrant.sh", privileged: false
  
  # .vimrc
  config.vm.provision "file", source: "files/.vimrc", destination: "~/.vimrc"
  config.vm.provision "file", source: "files/git-completion.bash", destination: "~/git-completion.bash"
end