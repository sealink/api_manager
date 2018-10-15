module APIManager
  module Response
    def self.build(raw_response, options)
      APIManager::Response::Base.for_type(options[:content_type].to_s.camelcase).new(raw_response, options)
    end
  end
end
