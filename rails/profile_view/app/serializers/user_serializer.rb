class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :details
end
