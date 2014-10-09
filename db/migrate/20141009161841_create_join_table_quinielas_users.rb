class CreateJoinTableQuinielasUsers < ActiveRecord::Migration
  def change
    create_join_table :quinielas, :users do |t|
      # t.index [:quiniela_id, :user_id]
      # t.index [:user_id, :quiniela_id]
    end
  end
end
