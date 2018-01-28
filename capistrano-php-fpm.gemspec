# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/php_fpm/version'

Gem::Specification.new do |gem|
  gem.name          = 'capistrano-php-fpm'
  gem.version       = Capistrano::PHP_FPM::VERSION
  gem.summary       = 'Capistrano extension for PHP-FPM tasks'
  gem.description   = 'Executes PHP-FPM service tasks like zap or restart from Capistrano'
  gem.authors       = ['Sullivan Senechal, Nathan Pierce']
  gem.email         = ['soullivaneuh@gmail.com','connarpierce@gmail.com']
  gem.homepage      = 'https://github.com/capistrano-plugins/capistrano-php-fpm'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ['lib']

  gem.add_dependency 'capistrano', '~> 3.2'
  gem.add_development_dependency 'rake', '~> 10.1'
end
