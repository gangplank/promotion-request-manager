Vagrant.require_version '>= 1.7.4'
Vagrant.configure(2) do |config|
  config.vm.box = 'minimum/ubuntu-trusty64-docker'
  # config.vm.box_version = '1.0.4'

  config.vm.hostname = 'promo-app'

  config.vm.network 'private_network', type: 'dhcp'

  app_port = ENV['PROMO-MANAGER-PORT'] ? ENV['PROMO-MANAGER-PORT'].to_i : 3000

  config.vm.network :forwarded_port, guest: app_port, host: app_port

  config.vm.provider :virtualbox do |v|
    v.memory = 1536
    v.cpus = 2
  end

  config.ssh.forward_agent = true

  config.vm.synced_folder '~', '/home/vagrant/host_home', type: 'nfs'
  config.vm.synced_folder '.', '/home/vagrant/app', type: 'nfs'

  config.vm.provision 'docker' do |d|
    d.run 'postgres',
      image: 'postgres',
      args: '-p 5432:5432 -e POSTGRES_USER=vagrant -d postgres'
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'vm/ansible/playbook.yml'
  end
end
