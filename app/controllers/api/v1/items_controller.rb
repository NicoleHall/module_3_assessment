class Api::V1::ItemsController < ApplicationController

  respond_to :json

 def index
    respond_with Item.all.map { |item| {id: item.id, name:item.name, description: item.description, image_url: item.image_url}}
 end

 def show
   item = Item.find_by(id: params[:id])
   item_hash = {id: item.id, name: item.name, description: item.description, image_url: item.image_url}
   respond_with item_hash
 end

end
