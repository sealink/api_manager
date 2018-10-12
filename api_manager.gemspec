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

  s.add_dependency 'rails'
  s.add_dependency 'rest-client', '~> 2.0.2'
end
