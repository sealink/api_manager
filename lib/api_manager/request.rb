module APIManager
  class Request
    include ActiveSupport::Rescuable

    CONNECTION_ERRORS = [
      Timeout::Error,
      Errno::EINVAL,
      Errno::ECONNRESET,
      Errno::ECONNREFUSED,
      EOFError,
      Net::HTTPBadResponse,
      Net::HTTPHeaderSyntaxError,
      Net::ProtocolError,
      SocketError,
    ]

    rescue_from *CONNECTION_ERRORS do |err|
      raise Error
    end

    rescue_from RestClient::ExceptionWithResponse do |err, content_type|
      response = Response.build(err.response, content_type: @content_type)
      raise ErrorWithResponse.new(response)
    end

    def self.execute(options)
      new.execute(options)
    end

    def execute(options)
      Rails.logger.debug("#{options.fetch(:method).to_s.upcase}: #{options.fetch(:url)}")

      @content_type = options.fetch(:as, :json)

      request_options = options.slice(:headers, :url, :method)
      request_options[:max_redirects] ||= 0
      request_options[:headers] ||= {}
      request_options[:headers][:params] = options.delete(:params) if options.include? :params

      Response.build(RestClient::Request.execute(request_options), content_type: @content_type).body
    rescue Exception => e
      rescue_with_handler(e) || raise
    end
  end
end
