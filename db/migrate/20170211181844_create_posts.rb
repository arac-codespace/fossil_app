class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :fossils do |t|
      t.integer   :kingdom_id
      t.integer :phylum_id
      t.integer :class_id
      t.integer :order_id
      t.integer :family_id
      t.integer :genus_id
      t.string :species_name
      t.text :summary
      t.text :env_int
      t.text :remarks
      t.string :age_range
      t.string :author
      t.timestamps
    end
  end
end
