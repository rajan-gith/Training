class BookSerializer < ActiveModel::Serializer
  # debugger
  attributes :id, :title, :author_name
  def author_name
    object.author.first_name
  end
end
