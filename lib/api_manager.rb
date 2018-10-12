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
