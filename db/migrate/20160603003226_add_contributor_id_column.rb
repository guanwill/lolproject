class AddContributorIdColumn < ActiveRecord::Migration
  def change
    add_column :conversations, :contributor_id, :integer
  end
end
