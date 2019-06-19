class AddCategoryToPaniers < ActiveRecord::Migration[5.2]
  def change
    add_column :paniers, :category, :string
  end
end
