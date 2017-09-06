class CreateEnvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :envoices do |t|
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
