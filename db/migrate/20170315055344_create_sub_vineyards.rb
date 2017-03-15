class CreateSubVineyards < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_vineyards do |t|
      t.integer :sub_vineyard_id
      t.integer :vineyard_id
      t.string :name

      t.timestamps
    end
  end
end
