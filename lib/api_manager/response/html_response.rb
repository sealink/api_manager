module APIManager
  module Response
    class HTMLResponse < Response::Base
      def body
        raw_response.html_safe
      end
    end
  end
end
