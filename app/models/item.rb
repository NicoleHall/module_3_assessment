class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  def self.exclude_dates
    select(:id, :name, :description, :image_url)
  end
end
