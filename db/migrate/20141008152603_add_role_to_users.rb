class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_cd, :string, :default => :general
  end
end
