class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  def attributes(*args)
    data = super
    data[:created_at] = object.created_at
    data
  end
end
