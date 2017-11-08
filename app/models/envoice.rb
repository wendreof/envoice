class Envoice < ApplicationRecord
  belongs_to :customer
  belongs_to :payment_method
  has_many :items



  def total
    totNota = self.items.map(&:total).inject(:+)
    totImp  = (self.tax * totNota/100) + totNota
    totDesc = (self.payment_method_value * totImp/100)
    totImp  - totDesc
  end

end