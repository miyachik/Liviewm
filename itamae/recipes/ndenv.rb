# frozen_string_literal: true

NDENV_DIR = '/usr/local/ndenv'
NDENV_SCRIPT = '/etc/profile.d/ndenv.sh'

git NDENV_DIR do
  repository 'git://github.com/riywo/ndenv.git'
end

remote_file NDENV_SCRIPT do
  source 'remote_files/ndenv.sh'
end

execute "set owner and mode for #{NDENV_SCRIPT} " do
  command "chown root: #{NDENV_SCRIPT}; chmod 644 #{NDENV_SCRIPT}"
  user 'root'
end

execute "mkdir #{NDENV_DIR}/plugins" do
  not_if "test -d #{NDENV_DIR}/plugins"
end

git "#{NDENV_DIR}/plugins/node-build" do
  repository 'git://github.com/riywo/node-build.git'
end

node['ndenv']['versions'].each do |version|
  execute "install node #{version}" do
    command "source #{NDENV_SCRIPT}; ndenv install #{version}"
    not_if "source #{NDENV_SCRIPT}; ndenv versions | grep #{version}"
  end
end

execute "set global npm #{node['ndenv']['global']}" do
  command "source #{NDENV_SCRIPT}; ndenv global #{node['ndenv']['global']}; ndenv rehash"
  not_if "source #{NDENV_SCRIPT}; ndenv global | grep #{node['ndenv']['global']}"
end
