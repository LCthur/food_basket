class AddAddresToPaniers < ActiveRecord::Migration[5.2]
  def change
    add_column :paniers, :adresse, :string
    add_column :paniers, :latitude, :float
    add_column :paniers, :longitude, :float
  end
end
