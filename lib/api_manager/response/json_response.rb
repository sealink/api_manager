module APIManager
  module Response
    class JSONResponse < Response::Base
      def body
        JSON.parse(raw_response.body, symbolize_names: true)
      end

      def errors
        body.fetch(:errors, [])
      end

      def error_messages
        errors.map { |e| e[:message] }
      end

      def error_ids
        errors.map { |e| e[:id] }
      end
    end
  end
end
