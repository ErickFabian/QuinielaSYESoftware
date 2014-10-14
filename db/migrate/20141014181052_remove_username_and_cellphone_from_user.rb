class RemoveUsernameAndCellphoneFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :username
    remove_column :users, :cellphone
  end
end
