class BestbuysController < ApplicationController

  def new

  end

  def results
    @results = BestbuyService.new.query_by_decription(params["query"])
  end

end
