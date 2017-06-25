class Book < ApplicationRecord
  belongs_to :author
  has_many :orders

  validates :title, presence: true
  validates :price, numericality: {greater_than: 0}

  def self.categories
  ["Aventura", "Romance", "Infantil", "Educativo", "Motivacional"]
end
end
