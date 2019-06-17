class CreateAliments < ActiveRecord::Migration[5.2]
  def change
    create_table :aliments do |t|
      t.string :description
      t.string :dose
      t.references :panier, foreign_key: true

      t.timestamps
    end
  end
end
