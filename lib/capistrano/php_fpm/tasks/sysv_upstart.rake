command = "/etc/init.d/#{fetch(:php_fpm_service_name)}"
namespace :'php_fpm' do
  desc 'Reload php_fpm'
  task :reload do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, command, 'reload') : execute(command, 'reload')
    end
  end

  desc 'Zap php_fpm'
  task :zap do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, command, 'zap') : execute(command, 'zap')
    end
  end

  desc 'Stop php_fpm'
  task :stop do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, command, 'stop') : execute(command, 'stop')
    end
  end

  desc 'Start php_fpm'
  task :start do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, command, 'start') : execute(command, 'start')
    end
  end

  desc 'Restart php_fpm'
  task :restart do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, command, 'restart') : execute(command, 'restart')
    end
  end
end