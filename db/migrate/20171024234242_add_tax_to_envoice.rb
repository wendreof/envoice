class AddTaxToEnvoice < ActiveRecord::Migration[5.1]
  def change

    add_column :envoices, :tax, :decimal, precision: 15, scale: 2
  end
end
