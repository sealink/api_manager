module APIManager
  module Response
    class RawResponse < Response::Base
      def body
        raw_response
      end
    end
  end
end
