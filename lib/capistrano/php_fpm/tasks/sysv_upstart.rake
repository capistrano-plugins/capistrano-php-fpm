namespace :'php_fpm' do
  desc 'Reload php_fpm'
  task :reload do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:php_fpm_service_name)}", 'reload') : execute("/etc/init.d/#{fetch(:php_fpm_service_name)}", 'reload')
    end
  end

  desc 'Zap php_fpm'
  task :zap do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:php_fpm_service_name)}", 'zap') : execute("/etc/init.d/#{fetch(:php_fpm_service_name)}", 'zap')
    end
  end

  desc 'Stop php_fpm'
  task :stop do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:php_fpm_service_name)}", 'stop') : execute("/etc/init.d/#{fetch(:php_fpm_service_name)}", 'stop')
    end
  end

  desc 'Start php_fpm'
  task :start do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:php_fpm_service_name)}", 'start') : execute("/etc/init.d/#{fetch(:php_fpm_service_name)}", 'start')
    end
  end

  desc 'Restart php_fpm'
  task :restart do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:php_fpm_service_name)}", 'restart') : execute("/etc/init.d/#{fetch(:php_fpm_service_name)}", 'restart')
    end
  end
end