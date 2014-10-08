class DropLeagueFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :league
  end
end
