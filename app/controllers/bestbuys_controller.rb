class BestbuysController < ApplicationController

  def new
    @bestbuy = BestbuyService.new
  end

  def results
    @results = BestbuyService.new.query_by_decription(params["query"])
  end

end
