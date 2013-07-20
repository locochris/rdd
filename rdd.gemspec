# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rdd/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'rdd'

  gem.authors     = [ 'locochris' ]
  gem.email       = [ 'chris@locomote.com.au' ]
  gem.summary     = 'RDD - Readme Driven Development - runs examples found in README files'
  gem.description = gem.summary
  gem.homepage    = "http://github.com/locochris/#{gem.name}"
  gem.licenses    = %w{BSD MIT}

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")

  gem.require_paths = [ 'lib' ]
  gem.version       = RDD::VERSION

  gem.add_development_dependency('rake', '~> 10.0')
  gem.add_development_dependency('rspec', '~> 2.0')
end
