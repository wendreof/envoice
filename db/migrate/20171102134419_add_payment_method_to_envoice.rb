class AddPaymentMethodToEnvoice < ActiveRecord::Migration[5.1]
    def change
      add_column :envoices, :payment_method_id, :int
      add_column :envoices, :payment_method_value, :int
    end
  end