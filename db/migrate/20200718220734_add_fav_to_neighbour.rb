class AddFavToNeighbour < ActiveRecord::Migration[6.0]
  def change
    add_column :neighbours, :fav, :boolean
  end
end
