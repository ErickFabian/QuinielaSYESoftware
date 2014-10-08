class CreateQuinielas < ActiveRecord::Migration
  def change
    create_table :quinielas do |t|
      t.string :name
      t.date :start_at
      t.date :end_at
      t.integer :cost

      t.timestamps
    end
  end
end
