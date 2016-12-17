# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'my_app_name'
set :repo_url, 'git@example.com:me/my_repo.git'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
