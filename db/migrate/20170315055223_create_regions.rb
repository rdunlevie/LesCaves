class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.integer :region_id
      t.string :name

      t.timestamps
    end
  end
end
