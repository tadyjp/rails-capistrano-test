# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'rails-capistrano-test'
set :repo_url, 'git@github.com:tadyjp/rails-capistrano-test.git'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

set :ssh_options, auth_methods: ['publickey'],
                  keys: ['~/.ssh/20161114-test.pem']


after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
