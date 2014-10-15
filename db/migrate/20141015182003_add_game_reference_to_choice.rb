class AddGameReferenceToChoice < ActiveRecord::Migration
  def change
    add_reference :choice, :game, index: true
  end
end
