class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :lol_username
      t.string :state
      t.string :fav_champion
      t.string :fav_position
      t.string :fav_gamemode
      t.string :fav_item
      t.timestamps null: false
    end
  end
end
