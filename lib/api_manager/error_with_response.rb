module APIManager
  class ErrorWithResponse < Error
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def error_ids
      response.error_ids
    end

    def messages
      response.error_messages
    end
  end
end
