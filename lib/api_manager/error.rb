module APIManager
  class Error < StandardError
    def error_ids
      [:connection_error]
    end

    def messages
      ["Failed to get a response from server"]
    end

    def message
      messages.to_sentence
    end
  end
end
