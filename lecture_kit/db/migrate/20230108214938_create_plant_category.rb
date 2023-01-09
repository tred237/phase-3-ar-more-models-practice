class CreatePlantCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_category do |t|
      t.integer :category_id
      t.integer :plant_id
    end
  end
end
