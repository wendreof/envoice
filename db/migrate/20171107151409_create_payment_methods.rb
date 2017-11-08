class CreatePaymentMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_methods do |t|
      t.string :type
      t.decimal :value, precision: 4, scale: 2

      t.timestamps
    end
  end
end
