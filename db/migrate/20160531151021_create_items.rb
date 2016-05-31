class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|


      t.integer :item_id
      t.string :item_name
      t.string :item_description
      t.string :item_image

      t.timestamps null: false
    end
  end
end
