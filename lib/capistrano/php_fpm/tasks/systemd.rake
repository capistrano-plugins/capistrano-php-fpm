namespace :'php_fpm' do
  desc 'Reload php_fpm'
  task :reload do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "reload #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}") : execute(fetch(:systemctl_location), "reload #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}")
    end
  end

  desc 'Zap php_fpm'
  task :zap do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "zap #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}") : execute(fetch(:systemctl_location), "zap #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}")
    end
  end

  desc 'Stop php_fpm'
  task :stop do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "stop #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}") : execute(fetch(:systemctl_location), "stop #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}")
    end
  end

  desc 'Start php_fpm'
  task :start do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "start #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}") : execute(fetch(:systemctl_location), "start #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}")
    end
  end

  desc 'Restart php_fpm'
  task :restart do
    on release_roles(fetch(:php_fpm_roles)) do
      fetch(:php_fpm_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "restart #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}") : execute(fetch(:systemctl_location), "restart #{fetch(:php_fpm_service_name)}#{fetch(:php_fpm_service_suffix)}")
    end
  end
end


