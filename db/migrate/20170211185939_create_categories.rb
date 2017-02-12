class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :kingdoms do |t|
      t.string :kingdom_name
    end
  end
end
