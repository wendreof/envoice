class Customer < ApplicationRecord
    has_many :envoices

    def total
     self.envoices.map(&:total).inject(:+)
    end
end

#rails g migration ItemsProductPrice 
#na migration gerada ->
#change_column :items, :product_price, :decimal, precision: 15, scale: 2
#rails db:migrate RAILS_ENV=test  e  rails db:migrate