class CreateGeneras < ActiveRecord::Migration[5.0]
  def change
    create_table :generas do |t|
      t.string :genus_name
      t.integer :kingdom_id
      t.integer :phylum_id
      t.integer :fossil_class_id
      t.integer :order_id
      t.integer :family_id
    end
  end
end
