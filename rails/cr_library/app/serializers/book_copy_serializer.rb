class BookCopySerializer < ActiveModel::Serializer
  attributes :id, :book_name, :user, :isbn, :format
  def book_name
    object.book.title
  end
  def user
    if object.user.class == NilClass
      nil
    else
      UserSerializer.new(object.user)
    end
    # instance_options[:without_serializer] ? object.user : UserSerializer.new(object.user, without_serializer: true)

  end
end
