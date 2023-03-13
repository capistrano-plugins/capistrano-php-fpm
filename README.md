# Capistrano PHP-FPM

Official Capistrano extension for PHP-FPM tasks.
This replaces 1.0.0 of https://rubygems.org/gems/capistrano-fpm. *It differs greatly in configuration.*

### Environments Supported
| systemd | sysv & upstart |
|-------- | -------------- |
| ```capistrano/php_fpm/systemd``` | ```capistrano/php_fpm/sysv_upstart``` |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.2'
gem 'capistrano-php-fpm'
```

## Usage

Require one of the above 'Environments Supported' in your `Capfile`:

```ruby
require 'capistrano/php_fpm/sysv_upstart'
```

`capistrano/php_fpm` comes with 5 tasks:

* php_fpm:reload
* php_fpm:restart
* php_fpm:stop
* php_fpm:start
* php_fpm:zap

You can execute the task on command line:
 
```bash
cap production php_fpm:reload
```

And configure it on your `deploy.rb` file:

```ruby
namespace :deploy do
  after :finishing, 'php_fpm:reload'
  after :rollback, 'php_fpm:reload'
end
```

### Configuration

Configurable options shown here are also the defaults:

```ruby
set :php_fpm_with_sudo, true
set :php_fpm_roles, :web
set :php_fpm_service_name, 'php-fpm' # Change this if you have non-standard naming for the php-fpm service
set :php_fpm_service_suffix, '.service' # Only used for systemd environment, change this if your service name is not sufixed by this
set :systemctl_location, '/bin/systemctl' # May already exist if you use other plugins. Be sure to check your config/deploy/{env} file
```

### More Capistrano automation?

Check out [capistrano-plugins](https://github.com/capistrano-plugins) github org.

### Contributing and bug reports

Contributions and improvements are very welcome.

If something is not working for you, or you find a bug please report it.

### Thanks

* [Sullivan Senechal](https://github.com/Soullivaneuh) @ [NexyLan](https://www.nexylan.com) - Original creator of sysv & upstart code plugin this is heavily based on
* [Emil Kilhage](https://github.com/kilhage) - For letting us use https://rubygems.org/gems/capistrano-php-fpm


### License

[MIT](LICENSE.md)
