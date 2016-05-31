class CreateRunesLists < ActiveRecord::Migration
  def change
    create_table :runes_lists do |t|
      t.integer :rune_id
      t.string :rune_name
      t.string :rune_description
      t.string :rune_image

      t.timestamps null: false
    end
  end
end
