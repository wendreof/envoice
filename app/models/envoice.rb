class Envoice < ApplicationRecord
  belongs_to :customer
  has_many :items

  def total
   self.items.map(&:total).inject(:+)
  end

end  