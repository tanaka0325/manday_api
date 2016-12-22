class TaskSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body, :status, :priority
end
