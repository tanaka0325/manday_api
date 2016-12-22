class PoemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body
end
