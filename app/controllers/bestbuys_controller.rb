class BestbuysController < ApplicationController

  def show

  end

  def results
    BestbuyService.new.query_by_decription(params: ["query"])
  end

end
