class CreateMasteries < ActiveRecord::Migration
  def change
    create_table :masteries do |t|
      t.integer :mastery_id
      t.string :mastery_name
      t.string :mastery_description
      t.string :mastery_rank
      t.string :mastery_image

      t.timestamps null: false
    end
  end
end
