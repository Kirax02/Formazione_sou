Vagrant.configure("2") do |config|
  config.vm.hostname = "Franco"
  config.vm.box = "rockylinux/9"
  config.vm.network "private_network", ip: "192.168.10.101"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 50000, host: 50000
  config.vbguest.auto_update = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end 
end
