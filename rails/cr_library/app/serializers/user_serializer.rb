class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  def name
    object.first_name.to_s + " " + object.last_name.to_s
  end
end
