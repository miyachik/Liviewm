# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

# frozen_string_literal: true
set :application, 'Liviewm'
set :repo_url, 'https://github.com/miyachik/Liviewm.git'
set :deploy_to, '/usr/local/app/Liviewm'
set :keep_releases, 3
set :rbenv_path, '/usr/local/rbenv'
set :rbenv_type, :system # :system or :user
set :rbenv_ruby, '2.4.1'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w(rake gem bundle ruby rails)
set :rbenv_roles, :all # default value
set :linked_dirs, %w(bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle public)
set :bundle_jobs, 4

set :puma_threads,    [2, 8]
set :puma_workers,    0
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.access.log"
set :puma_error_log,  "#{release_path}/log/puma.error.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :rbenv_type, :system

#set :unicorn_pid, -> { File.join(shared_path, 'tmp', 'pids', 'unicorn.pid') }
#set :unicorn_config_path, -> { File.join(current_path, 'config', 'unicorn.rb') }


namespace :deploy do
  desc "Make sure local git is in sync with remote."
  task :confirm do
    on roles(:app) do
      puts "This stage is '#{fetch(:stage)}'. Deploying branch is '#{fetch(:branch)}'."
      puts 'Are you sure? [y/n]'
      ask :answer, 'n'
      if fetch(:answer) != 'y'
        puts 'deploy stopped'
        exit
      end
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      invoke 'deploy'
    end
  end

  before :starting, :confirm
end
