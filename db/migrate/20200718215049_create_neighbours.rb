class CreateNeighbours < ActiveRecord::Migration[6.0]
  def change
    create_table :neighbours do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.text :about

      t.timestamps
    end
  end
end
