# frozen_string_literal: true

# package 'nginx' do
#  action :install
# end

execute 'install nginx from extras' do
  command 'amazon-linux-extras install nginx1.12'
  user 'root'
end

remote_file '/etc/nginx/nginx.conf' do
  source './remote_files/nginx.conf'
end

remote_file '/etc/nginx/conf.d/app.conf' do
  source './remote_files/app.conf'
end

service 'nginx' do
  action %i[enable start]
end
