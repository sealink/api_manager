module APIManager
  module Response
    def self.build(raw_response, options)
      klass = APIManager::Response::Base.for_type(options[:content_type].to_s.camelcase)
      raise "Unable to determine API response type" if !klass.present?
      klass.new(raw_response, options)
    end
  end
end
