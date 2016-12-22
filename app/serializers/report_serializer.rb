class ReportSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body, :title
end
