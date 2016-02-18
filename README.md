# promotion-request-manager

Developer Host Dependencies:
- Virtualbox: https://www.virtualbox.org/wiki/Downloads
- Vagrant: https://www.vagrantup.com/downloads.html
- Ansible: http://docs.ansible.com/ansible/intro_installation.html (available on osx homebrew)

Steps to get up and running:
- 1. Install all above dependencies
- 2. run "vagrant up"
- 3. run "vagrant ssh"
- 4. cd into the rails app within the vm "cd app"
- 5. run the rails setup script "bin/setup"
- 6. run the development server "bundle exec rails server" or "bails s"

Notes:
This is a modern ruby stack, so all gem-related calls must go through bundler.  To make this easier this VM ships with the aliases "bake"(bundle exec rake), "bails"(bundle exec rails), and "bx"(bundle exec)
