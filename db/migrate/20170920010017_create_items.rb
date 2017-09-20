class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.belongs_to :envoice, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
