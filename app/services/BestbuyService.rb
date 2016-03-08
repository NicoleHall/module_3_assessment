class BestbuyService
  attr_reader :conn, :api_key

  def initialize
    @conn = Faraday.new(:url => 'http://api.bestbuy.com')
    @api_key =

  end
