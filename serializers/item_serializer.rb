#class ItemSerializer < ActiveModel::Serializer
class Item < ActiveModelSerializers::Model

  item = Item.new(title: 'ActiveModelSerializers', body: 'Convention over configuration')

  # attributes :id,
  #           :name,
  #           :description,
  #           :unit_price,
  #           :merchant_id,
  #           :created_at,
  #           :updated_at,
  #           :skinny_item
  #
  # def skinny_item
  #   {id: object.id, name: object.name, unit_price: object.unit_price, merchant_id: object.merchant_id }
  # end
end
