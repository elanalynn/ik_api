class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :email, null: false
      t.string :address_1, null: false
      t.string :address_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.text :instructions

      t.timestamps
    end
  end
end
