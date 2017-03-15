class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.integer :wine_id
      t.integer :year
      t.integer :vineyard_id
      t.integer :varietal_id

      t.timestamps
    end
  end
end
