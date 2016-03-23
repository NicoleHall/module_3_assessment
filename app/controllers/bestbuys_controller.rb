class BestbuysController < ApplicationController

  def new

  end

  def results
    @results = BestbuyService.new.query_by_decription(params["bestbuy"]["item_decription"])
  end

end
