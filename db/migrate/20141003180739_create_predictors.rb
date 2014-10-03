class CreatePredictors < ActiveRecord::Migration
  def change
    create_table :predictors do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.integer :cost

      t.timestamps
    end
  end
end
