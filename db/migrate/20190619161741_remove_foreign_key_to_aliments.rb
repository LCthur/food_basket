class RemoveForeignKeyToAliments < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :aliments, :paniers
  end
end
