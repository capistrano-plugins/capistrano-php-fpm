namespace :load do
  task :defaults do
    set :php_fpm_with_sudo, true
    set :php_fpm_roles, :web
    set :php_fpm_service_name, 'php-fpm'
    set :php_fpm_service_suffix, '.service'
    set :systemctl_location, '/bin/systemctl'
  end
end