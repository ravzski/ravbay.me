require 'net/ssh/proxy/command'

# config valid only for Capistrano 3.1
lock '3.4.0'

set :application, 'rav'
set :repo_url, 'git@github.com:ravzski/ravbay.me.git'
set :deploy_via, :remote_cache
set :bundle_without, [:development, :test]

set :log_level, :debug
set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle config/thin}

set :keep_releases, 1
set :bundle_gemfile, -> { release_path.join('Gemfile') }
set :bundle_flags, '--deployment'

set :rvm_ruby_version, '2.3.0@rav'
set :deploy_to, "/home/deploy/"

load "config/deploy/tasks.rb"

after 'deploy:publishing', 'thin:restart'
