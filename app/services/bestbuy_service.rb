class BestbuyService
  attr_reader :conn, :api_key

  def initialize
    @conn = Faraday.new(:url => 'http://api.bestbuy.com')
    @api_key = ENV['bestbuy_api_key']
  end

  def query_by_decription(query)
    response = @conn.get("/v1/products(longDescription=#{query})?show=sku,name&pageSize=15&page=5&apiKey=#{@api_key}&format=json")
    response.body
  end
end
