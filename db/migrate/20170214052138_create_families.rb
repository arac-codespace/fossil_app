class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|
      t.string :family_name
      t.integer :kingdom_id
      t.integer :phylum_id
      t.integer :fossil_class_id
      t.integer :order_id      
    end
  end
end
