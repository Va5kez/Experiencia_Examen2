class Order < ApplicationRecord
  belongs_to :book

  validates :quantity, presence: true, numericality: {greater_than: 0}

    validate :no_hay_existencia

    def no_hay_existencia
    if Book.find_by(id: book_id).orders.any?
      @order = Book.find_by(id: book_id).orders.order("created_at").last
    end
  end
end
