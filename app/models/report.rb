class Report < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true
  validates :body, length: { maximum: 65535 }, presence: true
  validates :title, length: { maximum: 255 }, presence: true

  enum status: { published: 0, unpublished: 1 }
end
