class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|

      t.integer :map_id
      t.string :map_name

      t.timestamps null: false
    end
  end
end
