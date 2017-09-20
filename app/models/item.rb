class Item < ApplicationRecord
  belongs_to :envoice
  belongs_to :product
end
