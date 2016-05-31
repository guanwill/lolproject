class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.integer :champion_id
      t.string :champion_name
      t.string :champion_image
      t.timestamps null: false
    end
  end
end
