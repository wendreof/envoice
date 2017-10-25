class Envoice < ApplicationRecord
  belongs_to :customer
  has_many :items

  def total
    tot = self.items.map(&:total).inject(:+)
   (self.tax * tot /100) + tot
  end

end