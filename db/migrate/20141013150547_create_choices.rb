class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.belongs_to :user
      t.belongs_to :game
      t.timestamps
    end
  end
end
