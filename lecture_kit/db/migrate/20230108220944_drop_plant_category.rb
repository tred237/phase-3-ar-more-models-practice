class DropPlantCategory < ActiveRecord::Migration[5.2]
  def change
    rename_table('plant_category','plant_categories')
  end
end
