require 'webmock'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/support/cassettes'
  c.hook_into :webmock # or :fakeweb
  c.default_cassette_options = { match_requests_on: %i[method uri body] }
  WebMock.allow_net_connect!
  c.configure_rspec_metadata!
end
