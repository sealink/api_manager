module APIManager
  module Response
    class Base
      attr_reader :raw_response, :options
      delegate :headers, :code, :cookies, to: :raw_response

      def self.for_type(type)
        subclasses.find { |klass| klass.name.demodulize == "#{type}Response" }
      end

      def initialize(raw_response, options)
        @raw_response = raw_response
        @options = options
      end

      def success?
        code == 200
      end

      def error?
        !success?
      end

      def errors
        error? ? [body] : []
      end

      def error_messages
        errors
      end

      def error_ids
        error? ? [code] : []
      end

      def content_type
        @options.fetch(:content_type, :json)
      end
    end
  end
end
