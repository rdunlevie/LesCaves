class CreateVarietals < ActiveRecord::Migration[5.0]
  def change
    create_table :varietals do |t|
      t.integer :varietal_id
      t.string :name

      t.timestamps
    end
  end
end
