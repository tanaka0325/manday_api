class Task < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true, numericality: true
  validates :body, length: { maximum: 65535 }, presence: true
  validates :priority, presence: true, numericality: true

  enum status: { not_yet: 0, doing: 1, done: 2 }
  enum priority: { normal: 0, high: 1 }
end
