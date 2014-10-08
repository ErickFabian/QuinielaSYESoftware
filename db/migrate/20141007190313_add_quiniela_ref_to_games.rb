class AddQuinielaRefToGames < ActiveRecord::Migration
  def change
    add_reference :games, :quiniela, index: true
  end
end
