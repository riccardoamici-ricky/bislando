class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :type_of_event
      t.integer :capacity

      t.timestamps
    end
  end
end
