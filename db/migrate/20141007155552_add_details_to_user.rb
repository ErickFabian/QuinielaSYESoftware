class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :cellphone, :string
  end
end
