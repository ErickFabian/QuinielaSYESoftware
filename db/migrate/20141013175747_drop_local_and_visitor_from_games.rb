class DropLocalAndVisitorFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :local
    remove_column :games, :visitor

    add_column :games, :local_id, :integer
    add_column :games, :visitor_id, :integer 
  end
end
