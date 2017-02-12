class CreatePhylums < ActiveRecord::Migration[5.0]
  def change
    create_table :phylums do |t|
      t.integer :kingdom_id
      t.string :phylum_name
    end
  end
end
