Gem::Specification.new do |s|
  s.name        = %q{api_manager}
  s.version     = "0.0.1"
  s.licenses    = ['MIT']
  s.date        = %q{2018-10-12}
  s.summary     = %q{API Manager using REST-client}
  s.description = %q{Have this gem manage all your APIs so you can REST}
  s.homepage    = ''
  s.authors     = ["Edward McCaffrey", "Grant Colegate"]
  s.email       = 'development@sealink.com.au'
  s.files       =  Dir['lib/**/*', 'LICENSE', 'README.md', 'CHANGELOG.md']

  s.add_dependency 'rest-client', '~> 2.0.2'
  s.add_dependency 'activesupport', '~> 5.2.1'

  s.add_development_dependency 'bundler', '>= 1.12.5'
  s.add_development_dependency 'rake', '~> 11.3.0'
  s.add_development_dependency 'rspec', '~> 3.8.0'
  s.add_development_dependency 'coverage-kit', '~> 0.1.0'
  s.add_development_dependency 'simplecov-rcov', '~> 0.2.3'
  s.add_development_dependency 'coveralls', '~> 0.8.22'
  s.add_development_dependency 'vcr', '~> 5.1.0'
  s.add_development_dependency 'webmock', '~> 3.3.0'
end
