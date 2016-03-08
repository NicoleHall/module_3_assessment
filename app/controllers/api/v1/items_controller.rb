class Api::V1::ItemsController < ApplicationController

  respond_to :json

 def index

    skinny_items=Item.all.map { |item| item.skinny_item}
    respond_with skinny_item
    #require 'pry'; binding.pry
  # Item.all.map do |item|
  #
  #   items_without_dates << item_name: item.name, item_description: item.description, item_url: item.image_url
  # end
  #
  # respond_with item_without_dates
 end

end
