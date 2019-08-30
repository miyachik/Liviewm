# frozen_string_literal: true

set :branch, 'master'
set :stage, :development
set :rails_env, 'production'

set :ssh_options, keys: [File.expand_path('~/.ssh/aws.pem')],
                  forward_agent: false,
                  port: 22,
                  auth_methods: %w[publickey]
server '13.112.216.249', user: 'ec2-user',
                         roles: %w[web app db]
