class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  # def attributes(*args)
  #   a = ""
  #   data = super
  #   data[:test] = "hello"
  #   data
  # end
end
