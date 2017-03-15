class CreateVineyards < ActiveRecord::Migration[5.0]
  def change
    create_table :vineyards do |t|
      t.integer :vineyard_id
      t.string :name
      t.boolean :has_sub_vineyard

      t.timestamps
    end
  end
end
