module APIManager
  def self.get(options)
    execute(options.merge(method: :get))
  end

  def self.post(options)
    execute(options.merge(method: :post))
  end

  def self.put(options)
    execute(options.merge(method: :put))
  end

  def self.delete(options)
    execute(options.merge(method: :delete))
  end

  def self.execute(options)
    APIManager::Request.execute(options)
  end
end

require 'api_manager/error'
require 'api_manager/error_with_response'
require 'api_manager/request'
require 'api_manager/response'
require 'api_manager/response/base'
require 'api_manager/response/html_response'
require 'api_manager/response/json_response'
require 'api_manager/response/raw_response'
