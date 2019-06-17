class CreatePaniers < ActiveRecord::Migration[5.2]
  def change
    create_table :paniers do |t|
      t.string :titre
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
