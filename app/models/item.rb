class Item < ApplicationRecord
  belongs_to :envoice
  belongs_to :product

  def total
    return self.amount * self.product.price
  end

end