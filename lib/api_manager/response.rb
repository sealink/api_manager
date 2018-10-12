module APIManager
  module Response
    def self.build(raw_response, options)
      "APIManager::Response::#{options[:content_type].to_s.camelcase}Response".safe_constantize.new(raw_response, options)
    end
  end
end
