class Api::V1::UserSerializer < Api::V1::BaseSerializer

  attributes :id, :name, :description, :image_url, :created_at, :updated_at, :skinny_item

  def skinny_item
    {id: oject.id, name: object.name, description: object.description, image_url: object.image_url}
  end

end
