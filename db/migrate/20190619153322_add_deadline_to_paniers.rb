class AddDeadlineToPaniers < ActiveRecord::Migration[5.2]
  def change
    add_column :paniers, :deadline, :string
  end
end
