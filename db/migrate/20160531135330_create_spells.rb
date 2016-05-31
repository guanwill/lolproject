class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|

      t.integer :spell_id
      t.string :spell_name
      t.string :spell_description
      t.string :spell_image

      t.timestamps null: false
    end
  end
end
