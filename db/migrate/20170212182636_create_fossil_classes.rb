class CreateFossilClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :fossil_classes do |t|
      t.string :class_name
      t.integer :phylum_id
      t.integer :kingdom_id
    end
  end
end
