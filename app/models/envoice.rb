class Envoice < ApplicationRecord
  belongs_to :customer

  def total
    return 150  
  end
end
