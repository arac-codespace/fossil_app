class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order_name
      t.integer :kingdom_id
      t.integer :phylum_id
      t.integer :fossil_class_id
    end
  end
end
