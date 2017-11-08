class Item < ApplicationRecord
  belongs_to :envoice
  belongs_to :product

  validates :amount, presence: :true

  before_save :set_product_price

  def total
     self.amount * self.product_price
  end

  private

  def set_product_price
    self.product_price = self.product.price
  end

end