class PaymentMethod < ApplicationRecord
    has_many :envoices

    def totalMethod
        self.valueMethod
    end
end
