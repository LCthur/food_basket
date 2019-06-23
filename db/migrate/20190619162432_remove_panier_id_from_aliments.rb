class RemovePanierIdFromAliments < ActiveRecord::Migration[5.2]
  def change
    remove_column :aliments, :panier_id
  end
end
