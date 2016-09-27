class Job < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :budget_low, presence: true, numericality: true
  validates :budget_high, presence: true, numericality: true
end
