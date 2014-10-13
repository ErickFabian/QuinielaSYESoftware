class AddResultToGames < ActiveRecord::Migration
  def change
    add_column :games, :result_cd, :integer
  end
end
