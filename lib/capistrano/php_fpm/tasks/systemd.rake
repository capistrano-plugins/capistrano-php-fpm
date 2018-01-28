service_name = fetch(:php_fpm_service_name)
systemctl_location = fetch(:systemctl_location_name)
namespace :'php_fpm' do
  desc 'Reload php_fpm'
  task :reload do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, systemctl_location, "reload #{service_name}.service") : execute(systemctl_location, "reload #{service_name}.service")
    end
  end

  desc 'Zap php_fpm'
  task :zap do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, systemctl_location, "zap #{service_name}.service") : execute(systemctl_location, "zap #{service_name}.service")
    end
  end

  desc 'Stop php_fpm'
  task :stop do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, systemctl_location, "stop #{service_name}.service") : execute(systemctl_location, "stop #{service_name}.service")
    end
  end

  desc 'Start php_fpm'
  task :start do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, systemctl_location, "start #{service_name}.service") : execute(systemctl_location, "start #{service_name}.service")
    end
  end

  desc 'Restart php_fpm'
  task :restart do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, systemctl_location, "restart #{service_name}.service") : execute(systemctl_location, "restart #{service_name}.service")
    end
  end
end


