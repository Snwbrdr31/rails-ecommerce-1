class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.belongs_to :product
      t.belongs_to :cart
      t.timestamps
    end
  end
end
