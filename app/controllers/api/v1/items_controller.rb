class Api::V1::ItemsController < ApplicationController

  respond_to :json

 def index
    respond_with Item.exclude_dates#.select(:id, :name, :description, :image_url)
 end

 def show
   respond_with Item.exclude_dates.find(params[:id])
 end


 def destroy
   respond_with Item.delete(params[:id])
 end

 def create
   new_item = Item.create(item_params)
   respond_with new_item
 end

 private

 def item_params
  params.require(:item).permit(:name, :description, :image_url)
 end

end
