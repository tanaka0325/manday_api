class Poem < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true, numericality: true
  validates :body, length: { maximum: 65535 }, presence: true

  enum status: { published: 0, unpublished: 1 }
end
