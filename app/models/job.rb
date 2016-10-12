class Job < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true
  validates :budget_low, presence: true, numericality: true
  validates :budget_high, presence: true, numericality: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end