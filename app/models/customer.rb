class Customer < ApplicationRecord
    has_many :envoices

    def total
     self.envoices.map(&:total).inject(:+)
    end
end
